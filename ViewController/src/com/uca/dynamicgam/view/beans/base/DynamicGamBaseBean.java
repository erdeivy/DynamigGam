package com.uca.dynamicgam.view.beans.base;

import com.uca.dynamicgam.view.utils.ADFUtils;

import com.uca.dynamicgam.view.utils.JSFUtils;

import java.util.List;

import javax.faces.event.ComponentSystemEvent;

import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.RichPopup;

import org.apache.myfaces.trinidad.component.UIXIterator;

public class DynamicGamBaseBean {

    public DynamicGamBaseBean() {
        super();
    }

    public void onPageLoad(ComponentSystemEvent componentSystemEvent) {
        List rewardsList = (List) ADFUtils.findOperation("getNewRewards").execute();
        showRewards(rewardsList);
    }

    protected void showRewards(List rewardsList) {
        if (rewardsList != null && !rewardsList.isEmpty()) {
            RichPopup rewardsPopup = (RichPopup) JSFUtils.findComponentInRoot("rewardsPopup");
            if (rewardsPopup != null) {
                UIXIterator rewardsIterator = (UIXIterator) JSFUtils.findComponent(rewardsPopup, "rewrdIt");
                if (rewardsIterator != null) {
                    rewardsIterator.setValue(rewardsList);
                    ADFUtils.showPopup(rewardsPopup);
                }
            }
        }
    }
}
