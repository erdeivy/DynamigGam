package com.uca.dynamicgam.model.vo;

import java.sql.Timestamp;

import oracle.jbo.RowSet;
import oracle.jbo.domain.Date;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat May 27 11:02:38 CEST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class GamRewardsStatsVORowImpl extends ViewRowImpl {
    public static final int ENTITY_GAMREWARDSSTATSEO = 0;
    public static final int ENTITY_GAMACTIONSEO = 1;
    public static final int ENTITY_GAMREWARDEO = 2;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        IdRewardsStats,
        UserId,
        StatsTs,
        IdStrategy,
        IdAction,
        Shown,
        Quantifiable,
        TruncDate,
        RewardName,
        IdReward,
        Image,
        Description,
        Weight,
        GamUsersVO,
        YesNoLOV1,
        YesNoLOV2;
        static AttributesEnum[] vals = null;
        ;
        private static final int firstIndex = 0;

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }


    public static final int IDREWARDSSTATS = AttributesEnum.IdRewardsStats.index();
    public static final int USERID = AttributesEnum.UserId.index();
    public static final int STATSTS = AttributesEnum.StatsTs.index();
    public static final int IDSTRATEGY = AttributesEnum.IdStrategy.index();
    public static final int IDACTION = AttributesEnum.IdAction.index();
    public static final int SHOWN = AttributesEnum.Shown.index();
    public static final int QUANTIFIABLE = AttributesEnum.Quantifiable.index();
    public static final int TRUNCDATE = AttributesEnum.TruncDate.index();
    public static final int REWARDNAME = AttributesEnum.RewardName.index();
    public static final int IDREWARD = AttributesEnum.IdReward.index();
    public static final int IMAGE = AttributesEnum.Image.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int WEIGHT = AttributesEnum.Weight.index();
    public static final int GAMUSERSVO = AttributesEnum.GamUsersVO.index();
    public static final int YESNOLOV1 = AttributesEnum.YesNoLOV1.index();
    public static final int YESNOLOV2 = AttributesEnum.YesNoLOV2.index();

    /**
     * This is the default constructor (do not remove).
     */
    public GamRewardsStatsVORowImpl() {
    }

    /**
     * Gets GamRewardsStatsEO entity object.
     * @return the GamRewardsStatsEO
     */
    public EntityImpl getGamRewardsStatsEO() {
        return (EntityImpl) getEntity(ENTITY_GAMREWARDSSTATSEO);
    }

    /**
     * Gets GamActionsEO entity object.
     * @return the GamActionsEO
     */
    public EntityImpl getGamActionsEO() {
        return (EntityImpl) getEntity(ENTITY_GAMACTIONSEO);
    }

    /**
     * Gets GamRewardEO entity object.
     * @return the GamRewardEO
     */
    public EntityImpl getGamRewardEO() {
        return (EntityImpl) getEntity(ENTITY_GAMREWARDEO);
    }

    /**
     * Gets the attribute value for ID_REWARDS_STATS using the alias name IdRewardsStats.
     * @return the ID_REWARDS_STATS
     */
    public Long getIdRewardsStats() {
        return (Long) getAttributeInternal(IDREWARDSSTATS);
    }

    /**
     * Sets <code>value</code> as attribute value for ID_REWARDS_STATS using the alias name IdRewardsStats.
     * @param value value to set the ID_REWARDS_STATS
     */
    public void setIdRewardsStats(Long value) {
        setAttributeInternal(IDREWARDSSTATS, value);
    }

    /**
     * Gets the attribute value for USER_ID using the alias name UserId.
     * @return the USER_ID
     */
    public String getUserId() {
        return (String) getAttributeInternal(USERID);
    }

    /**
     * Sets <code>value</code> as attribute value for USER_ID using the alias name UserId.
     * @param value value to set the USER_ID
     */
    public void setUserId(String value) {
        setAttributeInternal(USERID, value);
    }

    /**
     * Gets the attribute value for STATS_TS using the alias name StatsTs.
     * @return the STATS_TS
     */
    public Timestamp getStatsTs() {
        return (Timestamp) getAttributeInternal(STATSTS);
    }

    /**
     * Sets <code>value</code> as attribute value for STATS_TS using the alias name StatsTs.
     * @param value value to set the STATS_TS
     */
    public void setStatsTs(Timestamp value) {
        setAttributeInternal(STATSTS, value);
    }

    /**
     * Gets the attribute value for ID_STRATEGY using the alias name IdStrategy.
     * @return the ID_STRATEGY
     */
    public Long getIdStrategy() {
        return (Long) getAttributeInternal(IDSTRATEGY);
    }

    /**
     * Sets <code>value</code> as attribute value for ID_STRATEGY using the alias name IdStrategy.
     * @param value value to set the ID_STRATEGY
     */
    public void setIdStrategy(Long value) {
        setAttributeInternal(IDSTRATEGY, value);
    }

    /**
     * Gets the attribute value for ID_ACTION using the alias name IdAction.
     * @return the ID_ACTION
     */
    public Long getIdAction() {
        return (Long) getAttributeInternal(IDACTION);
    }

    /**
     * Sets <code>value</code> as attribute value for ID_ACTION using the alias name IdAction.
     * @param value value to set the ID_ACTION
     */
    public void setIdAction(Long value) {
        setAttributeInternal(IDACTION, value);
    }

    /**
     * Gets the attribute value for the calculated attribute TruncDate.
     * @return the TruncDate
     */
    public Date getTruncDate() {
        return (Date) getAttributeInternal(TRUNCDATE);
    }

    /**
     * Gets the attribute value for SHOWN using the alias name Shown.
     * @return the SHOWN
     */
    public String getShown() {
        return (String) getAttributeInternal(SHOWN);
    }

    /**
     * Sets <code>value</code> as attribute value for SHOWN using the alias name Shown.
     * @param value value to set the SHOWN
     */
    public void setShown(String value) {
        setAttributeInternal(SHOWN, value);
    }

    /**
     * Gets the attribute value for REWARD_NAME using the alias name RewardName.
     * @return the REWARD_NAME
     */
    public String getRewardName() {
        return (String) getAttributeInternal(REWARDNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for REWARD_NAME using the alias name RewardName.
     * @param value value to set the REWARD_NAME
     */
    public void setRewardName(String value) {
        setAttributeInternal(REWARDNAME, value);
    }

    /**
     * Gets the attribute value for ID_REWARD using the alias name IdReward.
     * @return the ID_REWARD
     */
    public Long getIdReward() {
        return (Long) getAttributeInternal(IDREWARD);
    }

    /**
     * Sets <code>value</code> as attribute value for ID_REWARD using the alias name IdReward.
     * @param value value to set the ID_REWARD
     */
    public void setIdReward(Long value) {
        setAttributeInternal(IDREWARD, value);
    }

    /**
     * Gets the attribute value for IMAGE using the alias name Image.
     * @return the IMAGE
     */
    public String getImage() {
        return (String) getAttributeInternal(IMAGE);
    }

    /**
     * Sets <code>value</code> as attribute value for IMAGE using the alias name Image.
     * @param value value to set the IMAGE
     */
    public void setImage(String value) {
        setAttributeInternal(IMAGE, value);
    }

    /**
     * Gets the attribute value for DESCRIPTION using the alias name Description.
     * @return the DESCRIPTION
     */
    public String getDescription() {
        return (String) getAttributeInternal(DESCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for DESCRIPTION using the alias name Description.
     * @param value value to set the DESCRIPTION
     */
    public void setDescription(String value) {
        setAttributeInternal(DESCRIPTION, value);
    }

    /**
     * Gets the attribute value for QUANTIFIABLE using the alias name Quantifiable.
     * @return the QUANTIFIABLE
     */
    public String getQuantifiable() {
        return (String) getAttributeInternal(QUANTIFIABLE);
    }

    /**
     * Sets <code>value</code> as attribute value for QUANTIFIABLE using the alias name Quantifiable.
     * @param value value to set the QUANTIFIABLE
     */
    public void setQuantifiable(String value) {
        setAttributeInternal(QUANTIFIABLE, value);
    }

    /**
     * Gets the attribute value for WEIGHT using the alias name Weight.
     * @return the WEIGHT
     */
    public Long getWeight() {
        return (Long) getAttributeInternal(WEIGHT);
    }

    /**
     * Sets <code>value</code> as attribute value for WEIGHT using the alias name Weight.
     * @param value value to set the WEIGHT
     */
    public void setWeight(Long value) {
        setAttributeInternal(WEIGHT, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> GamUsersVO.
     */
    public RowSet getGamUsersVO() {
        return (RowSet) getAttributeInternal(GAMUSERSVO);
    }

    /**
     * Gets the view accessor <code>RowSet</code> YesNoLOV1.
     */
    public RowSet getYesNoLOV1() {
        return (RowSet) getAttributeInternal(YESNOLOV1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> YesNoLOV2.
     */
    public RowSet getYesNoLOV2() {
        return (RowSet) getAttributeInternal(YESNOLOV2);
    }
}
