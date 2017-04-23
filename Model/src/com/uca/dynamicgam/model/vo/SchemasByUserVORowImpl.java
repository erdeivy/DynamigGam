package com.uca.dynamicgam.model.vo;

import oracle.jbo.RowIterator;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Apr 23 12:31:29 CEST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class SchemasByUserVORowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        SchemaName,
        TablesByUser;
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
    public static final int SCHEMANAME = AttributesEnum.SchemaName.index();
    public static final int TABLESBYUSER = AttributesEnum.TablesByUser.index();

    /**
     * This is the default constructor (do not remove).
     */
    public SchemasByUserVORowImpl() {
    }

    /**
     * Gets the attribute value for the calculated attribute SchemaName.
     * @return the SchemaName
     */
    public String getSchemaName() {
        return (String) getAttributeInternal(SCHEMANAME);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link TablesByUser.
     */
    public RowIterator getTablesByUser() {
        return (RowIterator) getAttributeInternal(TABLESBYUSER);
    }
}

