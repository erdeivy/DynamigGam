package com.uca.dynamicgam.model.am;

import com.uca.dynamicgam.model.am.common.DynamicGamAM;
import com.uca.dynamicgam.model.vo.GamCellVOImpl;
import com.uca.dynamicgam.model.vo.GamCellVORowImpl;
import com.uca.dynamicgam.model.vo.GamColumnsVOImpl;
import com.uca.dynamicgam.model.vo.GamColumnsVORowImpl;
import com.uca.dynamicgam.model.vo.GamRowsVOImpl;
import com.uca.dynamicgam.model.vo.GamRowsVORowImpl;
import com.uca.dynamicgam.model.vo.GamTablesVOImpl;

import com.uca.dynamicgam.model.vo.GamTablesVORowImpl;

import java.util.ArrayList;
import java.util.List;

import oracle.jbo.NameValuePairs;
import oracle.jbo.Row;
import oracle.jbo.RowIterator;
import oracle.jbo.RowSetIterator;
import oracle.jbo.ViewObject;
import oracle.jbo.server.ApplicationModuleImpl;
import oracle.jbo.server.RowFinder;
import oracle.jbo.server.SequenceImpl;
import oracle.jbo.server.ViewLinkImpl;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Nov 06 13:12:42 CET 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class DynamicGamAMImpl extends ApplicationModuleImpl implements DynamicGamAM {
    /**
     * This is the default constructor (do not remove).
     */
    public DynamicGamAMImpl() {
    }


    /**
     * Container's getter for GamSchemas1.
     * @return GamSchemas1
     */
    public ViewObjectImpl getGamSchemasVO() {
        return (ViewObjectImpl) findViewObject("GamSchemasVO");
    }

    /**
     * Container's getter for GamTables1.
     * @return GamTables1
     */
    public GamTablesVOImpl getGamTablesVO() {
        return (GamTablesVOImpl) findViewObject("GamTablesVO");
    }

    /**
     * Container's getter for GamTablasFkVL1.
     * @return GamTablasFkVL1
     */
    public ViewLinkImpl getGamTablasFkVL1() {
        return (ViewLinkImpl) findViewLink("GamTablasFkVL1");
    }

    /**
     * Container's getter for GamColumns1.
     * @return GamColumns1
     */
    public GamColumnsVOImpl getGamColumnsVO() {
        return (GamColumnsVOImpl) findViewObject("GamColumnsVO");
    }

    /**
     * Container's getter for GamColumnasFkVL1.
     * @return GamColumnasFkVL1
     */
    public ViewLinkImpl getGamColumnasFkVL1() {
        return (ViewLinkImpl) findViewLink("GamColumnasFkVL1");
    }

    /**
     * Container's getter for GamTables1.
     * @return GamTables1
     */
    public GamTablesVOImpl getAllTablesVO() {
        return (GamTablesVOImpl) findViewObject("AllTablesVO");
    }

    /**
     * Container's getter for GamTables1.
     * @return GamTables1
     */
    public GamTablesVOImpl getDynamicTableVO() {
        return (GamTablesVOImpl) findViewObject("DynamicTableVO");
    }

    /**
     * Container's getter for GamColumns1.
     * @return GamColumns1
     */
    public GamColumnsVOImpl getDynamicColumnsVO() {
        return (GamColumnsVOImpl) findViewObject("DynamicColumnsVO");
    }

    /**
     * Container's getter for GamColumnasFkVL2.
     * @return GamColumnasFkVL2
     */
    public ViewLinkImpl getGamColumnasFkVL2() {
        return (ViewLinkImpl) findViewLink("GamColumnasFkVL2");
    }


    public void createDynamicRowAndColumns() {
        //CREATE DYNAMIC ROW
        GamRowsVORowImpl createdRow = (GamRowsVORowImpl) getDynamicRowsByTableVO().createRow();
        //SET ATTRS
        createdRow.setRowKey(getSequenceValue("GAM_ROWS_SEQ").longValue());
        //createdRow.setTableName(value); should be set by VL

        RowSetIterator rsi = getDynamicColumnsVO().createRowSetIterator(null);
        while (rsi.hasNext()) {
            GamColumnsVORowImpl next = (GamColumnsVORowImpl) rsi.next();
            GamCellVORowImpl createdCell = (GamCellVORowImpl) createdRow.getGamCell().createRow();
            createdCell.setCellValue(null);
            createdCell.setColumnName(next.getColumnName());
            //createdCell.setRowKey(null); should be set by VL
        }
        rsi.closeRowSetIterator();

        getDynamicRowsByTableVO().insertRow(createdRow);

    }


    private oracle.jbo.domain.Number getSequenceValue(String seqName) {
        SequenceImpl seq = new SequenceImpl(seqName, getDBTransaction());
        return seq.getSequenceNumber();
    }

    /**
     * Container's getter for GamRows1.
     * @return GamRows1
     */
    public GamRowsVOImpl getDynamicRowsByTableVO() {
        return (GamRowsVOImpl) findViewObject("DynamicRowsByTableVO");
    }

    /**
     * Container's getter for GamFilasFkVL1.
     * @return GamFilasFkVL1
     */
    public ViewLinkImpl getGamFilasFkVL1() {
        return (ViewLinkImpl) findViewLink("GamFilasFkVL1");
    }

    /**
     * Container's getter for GamCell1.
     * @return GamCell1
     */
    public GamCellVOImpl getDynamicCellsByRowVO() {
        return (GamCellVOImpl) findViewObject("DynamicCellsByRowVO");
    }

    /**
     * Container's getter for GamCeldaFkVL2.
     * @return GamCeldaFkVL2
     */
    public ViewLinkImpl getGamCeldaFkVL2() {
        return (ViewLinkImpl) findViewLink("GamCeldaFkVL2");
    }

    /**
     * Container's getter for GamUsers1.
     * @return GamUsers1
     */
    public ViewObjectImpl getGamUsersVO() {
        return (ViewObjectImpl) findViewObject("GamUsersVO");
    }

    /**
     * Container's getter for GamRoles1.
     * @return GamRoles1
     */
    public ViewObjectImpl getGamRolesVO() {
        return (ViewObjectImpl) findViewObject("GamRolesVO");
    }

    /**
     * Container's getter for GamUserRole1.
     * @return GamUserRole1
     */
    public ViewObjectImpl getGamUserRoleVO() {
        return (ViewObjectImpl) findViewObject("GamUserRoleVO");
    }

    /**
     * Container's getter for GamUserRoleUsersFkVL1.
     * @return GamUserRoleUsersFkVL1
     */
    public ViewLinkImpl getGamUserRoleUsersFkVL1() {
        return (ViewLinkImpl) findViewLink("GamUserRoleUsersFkVL1");
    }

    /**
     * Container's getter for GamSchemaRole1.
     * @return GamSchemaRole1
     */
    public ViewObjectImpl getGamSchemaRoleVO() {
        return (ViewObjectImpl) findViewObject("GamSchemaRoleVO");
    }

    /**
     * Container's getter for GamSchemaRoleSchemaFkVL1.
     * @return GamSchemaRoleSchemaFkVL1
     */
    public ViewLinkImpl getGamSchemaRoleSchemaFkVL1() {
        return (ViewLinkImpl) findViewLink("GamSchemaRoleSchemaFkVL1");
    }

    /**
     * Container's getter for GamRoles1.
     * @return GamRoles1
     */
    public ViewObjectImpl getAllRolesVO() {
        return (ViewObjectImpl) findViewObject("AllRolesVO");
    }

    public void modifyRoles(String viewObject, List newAssignedRoles) {
        ViewObjectImpl vo = (ViewObjectImpl) findViewObject(viewObject);
        if (vo != null) {
            List currentlyAssignedRoles = getAssignedRoles(viewObject);

            if (newAssignedRoles != null) {
                List newAssignedRolesCopy = new ArrayList(newAssignedRoles);
                newAssignedRolesCopy.removeAll(currentlyAssignedRoles);
                if (newAssignedRolesCopy != null && newAssignedRolesCopy.size() > 0) {
                    //ADD ROLE
                    for (Object roleIndex : newAssignedRolesCopy) {
                        Row createRow = vo.createRow();
                        createRow.setAttribute("RoleName", getRoleNameByIndex(roleIndex));
                        vo.insertRow(createRow);
                    }
                }
            }

            if (currentlyAssignedRoles != null) {
                if (newAssignedRoles != null) {
                    currentlyAssignedRoles.removeAll(newAssignedRoles);
                }
                if (currentlyAssignedRoles != null && currentlyAssignedRoles.size() > 0) {
                    //DELETE ROLE NOT ASSIGNED ANYMORE
                    for (Object roleIndex : currentlyAssignedRoles) {
                        String roleToDelete = getRoleNameByIndex(roleIndex);
                        findAndDeleteRole(vo, roleToDelete);
                    }
                }
            }
        }
    }

    private String getRoleNameByIndex(Object index) {
        Row newRole = getAllRolesVO().getRowAtRangeIndex(Integer.valueOf(index.toString()).intValue());
        return (String) newRole.getAttribute("RoleName");
    }

    public List getAssignedRoles(String viewObject) {
        List assignedRoles = new ArrayList();
        ViewObject vo = findViewObject(viewObject);
        if (vo != null) {
            RowSetIterator rsi = vo.createRowSetIterator(null);
            while (rsi.hasNext()) {
                Row row = rsi.next();
                String roleName = (String) row.getAttribute("RoleName");
                assignedRoles.add(getRoleIndex(roleName));
            }
            rsi.closeRowSetIterator();
        }
        return assignedRoles;
    }

    private Integer getRoleIndex(String roleName) {
        RowSetIterator rsi = getAllRolesVO().createRowSetIterator(null);
        int pos = -1;
        int found = -1;
        while (rsi.hasNext() && found == -1) {
            pos++;
            Row row = rsi.next();
            if (roleName.equals(row.getAttribute("RoleName"))) {
                found = pos;
            }
        }
        rsi.closeRowSetIterator();
        return found == -1 ? null : Integer.valueOf(found);
    }

    private void findAndDeleteRole(ViewObjectImpl vo, String roleToDelete) {
        RowFinder finder = vo.lookupRowFinder("FindByRoleNameRF");
        NameValuePairs nvp = new NameValuePairs();
        nvp.setAttribute("RoleName", roleToDelete);
        RowIterator ri = finder.execute(nvp, vo);
        Row first = ri.first();
        if (first != null) {
            first.remove();
        }
    }

    /**
     * Container's getter for GamReward1.
     * @return GamReward1
     */
    public ViewObjectImpl getGamRewardVO() {
        return (ViewObjectImpl) findViewObject("GamRewardVO");
    }

    /**
     * Container's getter for GamStrategy1.
     * @return GamStrategy1
     */
    public ViewObjectImpl getGamStrategyVO() {
        return (ViewObjectImpl) findViewObject("GamStrategyVO");
    }

    /**
     * Container's getter for GamSchemaStrategyVL1.
     * @return GamSchemaStrategyVL1
     */
    public ViewLinkImpl getGamSchemaStrategyVL1() {
        return (ViewLinkImpl) findViewLink("GamSchemaStrategyVL1");
    }

    /**
     * Container's getter for GamActions1.
     * @return GamActions1
     */
    public ViewObjectImpl getGamActionsVO() {
        return (ViewObjectImpl) findViewObject("GamActionsVO");
    }

    /**
     * Container's getter for GamStrategyActionsVL1.
     * @return GamStrategyActionsVL1
     */
    public ViewLinkImpl getGamStrategyActionsVL1() {
        return (ViewLinkImpl) findViewLink("GamStrategyActionsVL1");
    }
}
