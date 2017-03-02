package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.utils.ADFUtils;
import com.uca.dynamicgam.view.utils.JSFUtils;

import javax.faces.event.ActionEvent;
import javax.faces.event.ComponentSystemEvent;
import javax.faces.event.ValueChangeEvent;

import oracle.adf.view.rich.component.rich.input.RichSelectManyShuttle;

import oracle.binding.OperationBinding;

public class UserRolesBean {
    private RichSelectManyShuttle rolesShuttle;
    
    public UserRolesBean() {
        super();
    }
    
    public void onChangeSchemaRoles(ValueChangeEvent valueChangeEvent){
        OperationBinding oper = ADFUtils.findOperation("modifyRoles");
        oper.getParamsMap().put("viewObject", "GamUserRoleVO");
        oper.getParamsMap().put("newAssignedRoles", valueChangeEvent.getNewValue());
        oper.execute();
    }

    public void setRolesShuttle(RichSelectManyShuttle rolesShuttle) {
        this.rolesShuttle = rolesShuttle;
    }

    public RichSelectManyShuttle getRolesShuttle() {
        return rolesShuttle;
    }

    public void saveListener(ActionEvent actionEvent) {
        ADFUtils.invokeOperationBinding("Commit");
    }

    public void onRegionLoad(ComponentSystemEvent componentSystemEvent) {
        getRolesShuttle().setValue(ADFUtils.invokeOperationBinding("getAssignedRoles"));
        JSFUtils.addPartialTarget(getRolesShuttle());
    }
}
