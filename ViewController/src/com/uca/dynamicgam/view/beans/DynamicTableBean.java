package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.model.beans.TableRow;

import com.uca.dynamicgam.view.utils.ADFUtils;

import com.uca.dynamicgam.view.utils.JSFUtils;

import java.util.List;

import javax.faces.event.ActionEvent;

import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.event.DialogEvent;

import oracle.binding.OperationBinding;

public class DynamicTableBean {
    private RichTable tableBinding;
    private RichPopup confirmDeletePopup;

    public DynamicTableBean() {
        super();
    }

    public List getTableContent() {
        List<TableRow> contenido = (List<TableRow>) ADFUtils.invokeOperationBinding("buildTableContent");
        return contenido;
    }

    public void setTableBinding(RichTable tableBinding) {
        this.tableBinding = tableBinding;
    }

    public RichTable getTableBinding() {
        return tableBinding;
    }

    public void createRowListener(ActionEvent actionEvent) {
        ADFUtils.findOperation("createDynamicRowAndColumns").execute();
    }

    public void editRowListener(ActionEvent actionEvent) {
        Long rowKey = (Long) actionEvent.getComponent().getAttributes().get("RowKey");
        OperationBinding oper = ADFUtils.findOperation("setCurrentByRowKey");
        oper.getParamsMap().put("rowKey", rowKey);
        oper.execute();
    }

    public void deleteRowListener(ActionEvent actionEvent) {
        Long rowKey = (Long) actionEvent.getComponent().getAttributes().get("RowKey");
        getConfirmDeletePopup().setLauncherVar(rowKey.toString());
        ADFUtils.showPopup(getConfirmDeletePopup());
    }

    public void confirmDeleteListener(DialogEvent dialogEvent) {
        if (DialogEvent.Outcome.yes.equals(dialogEvent.getOutcome())) {
            Long rowKey = Long.valueOf(getConfirmDeletePopup().getLauncherVar());
            OperationBinding oper = ADFUtils.findOperation("deleteByRowKey");
            oper.getParamsMap().put("rowKey", rowKey);
            oper.execute();
            JSFUtils.addPartialTarget(getTableBinding());
            ADFUtils.invokeOperationBinding("Commit");
        }
    }

    public void setConfirmDeletePopup(RichPopup confirmDeletePopup) {
        this.confirmDeletePopup = confirmDeletePopup;
    }

    public RichPopup getConfirmDeletePopup() {
        return confirmDeletePopup;
    }
}
