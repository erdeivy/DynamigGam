--------------------------------------------------------
-- Archivo creado  - sábado-abril-22-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger ON_INSERT_HISTORY_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_INSERT_HISTORY_TRIGGER" 
BEFORE INSERT ON GAM_HISTORY 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  TYPE c_reward_type
  IS
  RECORD
  (
    repetitions gam_actions.repetitions%TYPE,
    id_strategy gam_actions.id_strategy%TYPE,
    id_action gam_actions.id_action%TYPE,
    id_reward gam_actions.id_reward%TYPE);
  c_reward c_reward_type;
  
  V_NOT_REWARDED NUMBER;
  V_REWARDS_TO_INSERT NUMBER;
  V_REWARDS_TO_UPDATE NUMBER;
  
  V_ERROR_TEXT GAM_LOG.MSG_TEXT%type;
  
  CURSOR C_NOT_REWARDED IS
    SELECT COUNT(GH.ID_HISTORY)
    FROM GAM_HISTORY GH
    WHERE GH.OPERATION = :NEW.OPERATION
    AND GH.REWARDED = 'N'
    AND GH.TABLE_NAME = :NEW.TABLE_NAME
    AND GH.USER_ID = :NEW.USER_ID
    AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#');
  
  CURSOR C_TO_REWARD IS
    SELECT GA.REPETITIONS, GA.ID_STRATEGY, GA.ID_ACTION, GA.ID_REWARD
    FROM GAM_ACTIONS GA,
         GAM_STRATEGY GS
    WHERE GA.TABLE_NAME = :NEW.TABLE_NAME
    AND GA.OPERATION = :NEW.OPERATION
    AND NVL(GA.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
    AND GA.ID_STRATEGY = GS.ID_STRATEGY
    AND GS.IS_ACTIVE = 'Y'
    AND GA.REPETITIONS <= V_NOT_REWARDED;
BEGIN
  --Comprobar cuantas recompensas están pendientes de otorgar para el usuario
  OPEN C_NOT_REWARDED;
  FETCH C_NOT_REWARDED INTO V_NOT_REWARDED;
  CLOSE C_NOT_REWARDED;

  V_NOT_REWARDED := V_NOT_REWARDED + 1; --Añadir la fila actual también para considerarla

  FOR c_reward in C_TO_REWARD
  LOOP
    V_REWARDS_TO_INSERT := FLOOR(V_NOT_REWARDED / c_reward.REPETITIONS);
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('V_REWARDS_TO_INSERT'||V_REWARDS_TO_INSERT);
    FOR counter in 1..V_REWARDS_TO_INSERT LOOP
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('counter'||counter);
      --Insertar recompensa otorgada
      INSERT INTO GAM_REWARDS_STATS (ID_REWARDS_STATS, USER_ID, STATS_TS, ID_STRATEGY, ID_ACTION)
      VALUES (GAM_REWARDS_STATS_SEQ.nextval, :NEW.USER_ID, sysdate, c_reward.id_strategy, c_reward.id_action);
      
      IF counter = 1 THEN
        --La primera vez, actualizamos la fila nueva
        :NEW.REWARDED := 'S';
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS - 1;
      ELSE
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS;
      END IF;
      
      --Marcar como RECOMPENSADAS tantas acciones como repeticiones hagan falta para conseguir la recompensa anterior
      UPDATE GAM_HISTORY GH
      SET GH.REWARDED = 'S'
      WHERE GH.OPERATION = :NEW.OPERATION
      AND GH.REWARDED = 'N'
      AND GH.TABLE_NAME = :NEW.TABLE_NAME
      AND GH.USER_ID = :NEW.USER_ID
      AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
      AND ROWNUM <= V_REWARDS_TO_UPDATE;
    END LOOP;
  END LOOP;
    
EXCEPTION
WHEN OTHERS THEN
  V_ERROR_TEXT := 'Error '  || SQLCODE || '-' || SQLERRM;
  INSERT INTO GAM_LOG (MSG_TEXT) VALUES (V_ERROR_TEXT);
  
END;
/
ALTER TRIGGER "HR"."ON_INSERT_HISTORY_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ON_CHANGE_CELL_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_CHANGE_CELL_TRIGGER" 
AFTER UPDATE ON GAM_CELL 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  V_TABLE VARCHAR2(50 CHAR);
  CURSOR GET_TABLE_NAME (P_ROWKEY NUMBER) IS
    SELECT TABLE_NAME
    FROM GAM_ROWS
    WHERE ROW_KEY = P_ROWKEY;
BEGIN
  OPEN GET_TABLE_NAME(:NEW.ROW_KEY);
   FETCH GET_TABLE_NAME INTO V_TABLE;
  CLOSE GET_TABLE_NAME;
  
  INSERT INTO GAM_HISTORY (ID_HISTORY, USER_ID, OPERATION, HISTORY_TS, TABLE_NAME, COLUMN_NAME)
                   VALUES (GAM_HISTORY_SEQ.NEXTVAL, PKG_GAM_USER.GET_USER(), 'UPDATE', sysdate, V_TABLE, :NEW.COLUMN_NAME);
END;
/
ALTER TRIGGER "HR"."ON_CHANGE_CELL_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ON_CREATE_DELETE_ROW_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_CREATE_DELETE_ROW_TRIGGER" 
AFTER DELETE OR INSERT ON GAM_ROWS 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  V_OPERATION VARCHAR2(10 CHAR);
BEGIN
  CASE
    WHEN INSERTING THEN
      V_OPERATION := 'INSERT';
    WHEN DELETING THEN
      V_OPERATION := 'DELETE';
  END CASE;
  
  INSERT INTO GAM_HISTORY (ID_HISTORY, USER_ID, OPERATION, HISTORY_TS, TABLE_NAME, COLUMN_NAME)
                   VALUES (GAM_HISTORY_SEQ.NEXTVAL, PKG_GAM_USER.GET_USER(), V_OPERATION, sysdate, NVL(:NEW.TABLE_NAME, :OLD.TABLE_NAME), null);
END;
/
ALTER TRIGGER "HR"."ON_CREATE_DELETE_ROW_TRIGGER" ENABLE;
