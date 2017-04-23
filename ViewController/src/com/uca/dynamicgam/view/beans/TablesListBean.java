package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.utils.ADFUtils;

import com.uca.dynamicgam.view.utils.JSFUtils;

import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.layout.RichPanelHeader;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.ViewObject;
import oracle.jbo.server.ViewObjectImpl;

public class TablesListBean {
    private static final String SELECTEDSCHEMA = "selectedSchema";
    private RichPanelHeader containerPanel;

    public TablesListBean() {
        super();
    }

    public String getSelectedSchema() {
        if (getPFValue() == null) {
            ViewObject vo = ADFUtils.findIterator("SchemasByUserVOIterator").getViewObject();
            if (vo != null) {
                if (vo.first() != null) {
                    setPFValue((String) vo.first().getAttribute("SchemaName"));
                }
            }

        }
        setCurrentSchema();
        return getPFValue();
    }

    public void setSelectedSchema(String selectedSchema) {
        setPFValue(selectedSchema);
        setCurrentSchema();
    }

    private void setCurrentSchema() {
        ViewObjectImpl vo = (ViewObjectImpl) ADFUtils.findIterator("SchemasByUserVOIterator").getViewObject();
        Row[] rows = vo.findByKey(new Key(new Object[] { getPFValue() }), 1);
        if (rows != null && rows.length > 0) {
            vo.setCurrentRow(rows[0]);
        }
        JSFUtils.addPartialTarget(getContainerPanel());
    }

    public void setContainerPanel(RichPanelHeader containerPanel) {
        this.containerPanel = containerPanel;
    }

    public RichPanelHeader getContainerPanel() {
        return containerPanel;
    }

    private void setPFValue(String newValue) {
        ADFContext.getCurrent().getPageFlowScope().put(SELECTEDSCHEMA, newValue);
    }

    private String getPFValue() {
        return (String) ADFContext.getCurrent().getPageFlowScope().get(SELECTEDSCHEMA);
    }
}
