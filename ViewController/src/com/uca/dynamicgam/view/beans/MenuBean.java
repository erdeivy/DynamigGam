package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.utils.ADFUtils;

import oracle.adf.controller.TaskFlowId;
import oracle.adf.model.BindingContext;
import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.RichDialog;
import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.component.rich.layout.RichPanelStretchLayout;
import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.event.DialogEvent;

import oracle.binding.BindingContainer;

public class MenuBean {

    private RichPanelStretchLayout pslMain;
    private final String WELCOME_TF_URL = "/WEB-INF/welcome-taskflow.xml#welcome-taskflow";
    private final String SCHEMAS_TF_URL = "/WEB-INF/schemas-maintenance-taskflow.xml#schemas-maintenance-taskflow";
    private final String TABLES_LIST_TF_URL = "/WEB-INF/tables-list-taskflow.xml#tables-list-taskflow";
    private final String ROLES_TF_URL = "/WEB-INF/roles-taskflow.xml#roles-taskflow";
    private final String USERS_TF_URL = "/WEB-INF/users-taskflow.xml#users-taskflow";
    private final String REWARDS_TF_URL = "/WEB-INF/rewards-taskflow.xml#rewards-taskflow";
    private final String ACTIONS_HISTORIC_TF_URL = "/WEB-INF/actions-historic-taskflow.xml#actions-historic-taskflow";
    private final String REWARDS_STATS_TF_URL = "/WEB-INF/rewards-stats-taskflow.xml#rewards-stats-taskflow";
    private static final String CURRENT_TF_KEY = "currentTf";
    private static final String NEXT_TF_KEY = "nextTf";
    private RichPopup pendingChangesPopup;

    public MenuBean() {
        super();
    }

    public TaskFlowId getTaskFlowId() {
        String currentTf = getCurrentTf();
        if (currentTf == null) {
            currentTf = WELCOME_TF_URL;
        }
        return TaskFlowId.parse(currentTf);
    }

    public void setPslMain(RichPanelStretchLayout pslMain) {
        this.pslMain = pslMain;
    }

    public RichPanelStretchLayout getPslMain() {
        return pslMain;
    }

    private String getCurrentTf() {
        return (String) ADFContext.getCurrent().getPageFlowScope().get(CURRENT_TF_KEY);
    }

    private void setCurrentTf(String tfUrl) {
        ADFContext.getCurrent().getPageFlowScope().put(CURRENT_TF_KEY, tfUrl);
    }

    private String getNextTf() {
        return (String) ADFContext.getCurrent().getPageFlowScope().get(NEXT_TF_KEY);
    }

    private void setNextTf(String tfUrl) {
        ADFContext.getCurrent().getPageFlowScope().put(NEXT_TF_KEY, tfUrl);
    }

    public String goSchemasAction() {
        goTaskFlow(SCHEMAS_TF_URL);
        return null;
    }

    public String goWelcomeAction() {
        goTaskFlow(WELCOME_TF_URL);
        return null;
    }

    public String goViewTablesAction() {
        goTaskFlow(TABLES_LIST_TF_URL);
        return null;
    }

    public String goRolesAction() {
        goTaskFlow(ROLES_TF_URL);
        return null;
    }

    public String goUsersAction() {
        goTaskFlow(USERS_TF_URL);
        return null;
    }

    public String goRewardsAction() {
        goTaskFlow(REWARDS_TF_URL);
        return null;
    }

    public String goRewardsStatsAction() {
        goTaskFlow(REWARDS_STATS_TF_URL);
        return null;
    }

    public String goHistoricAction() {
        goTaskFlow(ACTIONS_HISTORIC_TF_URL);
        return null;
    }

    private void goTaskFlow(String tfUrl) {
        //TODO NO FUNCIONA
        if (ADFUtils.isDirtyCurrentDataControl() || ADFUtils.isModifiedCurrentDataControl() ||
            ADFUtils.getApplicationModuleForDataControl("DynamicGamAMDataControl").getTransaction().isDirty()) {
            setNextTf(tfUrl);
            ADFUtils.showPopup(getPendingChangesPopup());
        } else {
            setCurrentTf(tfUrl);
            AdfFacesContext.getCurrentInstance().addPartialTarget(getPslMain());
        }
    }

    public void setPendingChangesPopup(RichPopup pendingChangesPopup) {
        this.pendingChangesPopup = pendingChangesPopup;
    }

    public RichPopup getPendingChangesPopup() {
        return pendingChangesPopup;
    }

    public void pendingChangesListener(DialogEvent dialogEvent) {
        if (DialogEvent.Outcome.yes.equals(dialogEvent.getOutcome())) {
            ADFUtils.invokeOperationBinding("Rollback");
            goTaskFlow(getNextTf());
        }
    }
}
