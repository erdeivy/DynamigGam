package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.utils.ADFUtils;

import javax.faces.event.ActionEvent;

import oracle.adf.view.rich.component.rich.RichPopup;

public class ActionsHistoricBean {
    private RichPopup pieChartPopup;

    public ActionsHistoricBean() {
        super();
    }

    public void pieChartListener(ActionEvent actionEvent) {
        ADFUtils.findOperation("buildOperationsCountModel").execute();
        ADFUtils.showPopup(getPieChartPopup());
    }

    public void setPieChartPopup(RichPopup pieChartPopup) {
        this.pieChartPopup = pieChartPopup;
    }

    public RichPopup getPieChartPopup() {
        return pieChartPopup;
    }
}
