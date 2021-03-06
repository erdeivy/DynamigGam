package com.uca.dynamicgam.model.vo;

import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Nov 06 14:17:20 CET 2016
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class GamCellVORowImpl extends ViewRowImpl {
    public static final int ENTITY_GAMCELLEO = 0;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        RowKey,
        ColumnName,
        CellValue;
        private static AttributesEnum[] vals = null;
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
    public static final int ROWKEY = AttributesEnum.RowKey.index();
    public static final int COLUMNNAME = AttributesEnum.ColumnName.index();
    public static final int CELLVALUE = AttributesEnum.CellValue.index();

    /**
     * This is the default constructor (do not remove).
     */
    public GamCellVORowImpl() {
    }

    /**
     * Gets GamCellEO entity object.
     * @return the GamCellEO
     */
    public EntityImpl getGamCellEO() {
        return (EntityImpl) getEntity(ENTITY_GAMCELLEO);
    }

    /**
     * Gets the attribute value for ROW_KEY using the alias name RowKey.
     * @return the ROW_KEY
     */
    public Long getRowKey() {
        return (Long) getAttributeInternal(ROWKEY);
    }

    /**
     * Sets <code>value</code> as attribute value for ROW_KEY using the alias name RowKey.
     * @param value value to set the ROW_KEY
     */
    public void setRowKey(Long value) {
        setAttributeInternal(ROWKEY, value);
    }

    /**
     * Gets the attribute value for COLUMN_NAME using the alias name ColumnName.
     * @return the COLUMN_NAME
     */
    public String getColumnName() {
        return (String) getAttributeInternal(COLUMNNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for COLUMN_NAME using the alias name ColumnName.
     * @param value value to set the COLUMN_NAME
     */
    public void setColumnName(String value) {
        setAttributeInternal(COLUMNNAME, value);
    }

    /**
     * Gets the attribute value for CELL_VALUE using the alias name CellValue.
     * @return the CELL_VALUE
     */
    public String getCellValue() {
        return (String) getAttributeInternal(CELLVALUE);
    }

    /**
     * Sets <code>value</code> as attribute value for CELL_VALUE using the alias name CellValue.
     * @param value value to set the CELL_VALUE
     */
    public void setCellValue(String value) {
        setAttributeInternal(CELLVALUE, value);
    }
}

