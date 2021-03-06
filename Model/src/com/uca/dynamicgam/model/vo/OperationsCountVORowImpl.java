package com.uca.dynamicgam.model.vo;

import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Jul 22 11:18:10 CEST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OperationsCountVORowImpl extends ViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Operation,
        Count;
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


    public static final int OPERATION = AttributesEnum.Operation.index();
    public static final int COUNT = AttributesEnum.Count.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OperationsCountVORowImpl() {
    }

    /**
     * Gets the attribute value for the calculated attribute Operation.
     * @return the Operation
     */
    public String getOperation() {
        return (String) getAttributeInternal(OPERATION);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Operation.
     * @param value value to set the  Operation
     */
    public void setOperation(String value) {
        setAttributeInternal(OPERATION, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Count.
     * @return the Count
     */
    public Long getCount() {
        return (Long) getAttributeInternal(COUNT);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Count.
     * @param value value to set the  Count
     */
    public void setCount(Long value) {
        setAttributeInternal(COUNT, value);
    }
}

