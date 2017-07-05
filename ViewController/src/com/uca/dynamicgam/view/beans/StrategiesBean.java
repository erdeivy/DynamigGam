package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.utils.ADFUtils;
import com.uca.dynamicgam.view.utils.JSFUtils;

import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import oracle.jbo.Row;

public class StrategiesBean {
    public StrategiesBean() {
        super();
    }
    
    public void onChangeOperation(ValueChangeEvent vce){
        vce.getComponent().processUpdates(FacesContext.getCurrentInstance());
        Row currentRow = ADFUtils.findIterator("GamActionsVOIterator").getCurrentRow();
        if(currentRow != null){
            if(!"UPDATE".equals(currentRow.getAttribute("Operation"))){
                currentRow.setAttribute("ColumnName", null);
            }
        }
    }
}
