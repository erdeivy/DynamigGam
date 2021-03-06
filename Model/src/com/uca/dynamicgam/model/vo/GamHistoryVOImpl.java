package com.uca.dynamicgam.model.vo;

import com.uca.dynamicgam.model.vo.base.DynamicGamBaseVOImpl;

import oracle.adf.share.ADFContext;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Jul 22 11:41:47 CEST 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class GamHistoryVOImpl extends DynamicGamBaseVOImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public GamHistoryVOImpl() {
    }

    /**
     * Returns the variable value for bind_user.
     * @return variable value for bind_user
     */
    public String getbind_user() {
        return (String) ensureVariableManager().getVariableValue("bind_user");
    }

    /**
     * Sets <code>value</code> for variable bind_user.
     * @param value value to bind as bind_user
     */
    public void setbind_user(String value) {
        ensureVariableManager().setVariableValue("bind_user", value);
    }
}

