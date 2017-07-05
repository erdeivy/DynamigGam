package com.uca.dynamicgam.view.beans;

import com.uca.dynamicgam.view.beans.base.DynamicGamBaseBean;

import com.uca.dynamicgam.view.utils.ADFUtils;

import java.util.List;

import javax.faces.event.ActionEvent;

public class DynamicRowBean extends DynamicGamBaseBean {
    public DynamicRowBean() {
        super();
    }
    
    public void commitListener(ActionEvent actionEvent) {
        List rewardsList = (List) ADFUtils.findOperation("Commit").execute();
        showRewards(rewardsList);
    }
}
