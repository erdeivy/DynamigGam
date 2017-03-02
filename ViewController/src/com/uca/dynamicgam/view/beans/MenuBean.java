package com.uca.dynamicgam.view.beans;

import oracle.adf.controller.TaskFlowId;
import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.layout.RichPanelStretchLayout;
import oracle.adf.view.rich.context.AdfFacesContext;

public class MenuBean {
    private RichPanelStretchLayout pslMain;
    private final String WELCOME_TF_URL = "/WEB-INF/welcome-taskflow.xml#welcome-taskflow";
    private final String SCHEMAS_TF_URL = "/WEB-INF/schemas-maintenance-taskflow.xml#schemas-maintenance-taskflow";
    private final String TABLES_LIST_TF_URL = "/WEB-INF/tables-list-taskflow.xml#tables-list-taskflow";
    private final String ROLES_TF_URL = "/WEB-INF/roles-taskflow.xml#roles-taskflow";
    private final String USERS_TF_URL = "/WEB-INF/users-taskflow.xml#users-taskflow";
    private final String REWARDS_TF_URL = "/WEB-INF/rewards-taskflow.xml#rewards-taskflow";

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
        return (String) ADFContext.getCurrent().getPageFlowScope().get("currentTf");
    }

    private void setCurrentTf(String tfUrl) {
        ADFContext.getCurrent().getPageFlowScope().put("currentTf", tfUrl);
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

    private void goTaskFlow(String tfUrl) {
        //TODO Check dirty transaction

        setCurrentTf(tfUrl);
        AdfFacesContext.getCurrentInstance().addPartialTarget(getPslMain());
    }
}
