package com.uca.dynamicgam.model.vo.base;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.server.TransactionEvent;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowImpl;

public class DynamicGamBaseVOImpl extends ViewObjectImpl {
    private Key currentRowKey;
    private int currentRowIndexInRange;

    public DynamicGamBaseVOImpl() {
        super();
    }

    public void beforeRollback(TransactionEvent transactionEvent) {
        if (this.isExecuted()) {
            ViewRowImpl currentRow = (ViewRowImpl) this.getCurrentRow();
            if (currentRow != null) {
                byte newRowState = currentRow.getNewRowState();
                if (newRowState != Row.STATUS_INITIALIZED && newRowState != Row.STATUS_NEW) {
                    currentRowKey = currentRow.getKey();
                    int rangeIndexOfCurrentRow = this.getRangeIndexOf(currentRow);
                    currentRowIndexInRange = rangeIndexOfCurrentRow;
                }
            }
        }
        super.beforeRollback(transactionEvent);
    }

    public void afterRollback(TransactionEvent transactionEvent) {
        super.afterRollback(transactionEvent);
        if (currentRowKey != null) {
            this.executeQuery();
            Key k = new Key(currentRowKey.getAttributeValues());
            Row[] found = this.findByKey(k, 1);
            if (found != null && found.length == 1) {
                Row r = this.getRow(k);
                this.setCurrentRow(r);
                if (currentRowIndexInRange >= 0) {
                    this.scrollRangeTo(r, currentRowIndexInRange);
                }
            }
        }
        currentRowKey = null;
    }
}
