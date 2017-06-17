package com.uca.dynamicgam.view.beans.base;

import com.uca.dynamicgam.view.utils.ADFUtils;

import com.uca.dynamicgam.view.utils.JSFUtils;

import java.util.List;

import javax.faces.event.ComponentSystemEvent;

import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.RichPopup;

import org.apache.myfaces.trinidad.component.UIXIterator;

public class DynamicGamBaseBean {
    private RichPopup rewardsPopup;

    public DynamicGamBaseBean() {
        super();
    }

    public void setRewardsPopup(RichPopup rewardsPopup) {
        this.rewardsPopup = rewardsPopup;
    }

    public RichPopup getRewardsPopup() {
        return rewardsPopup;
    }

    public void onPageLoad(ComponentSystemEvent componentSystemEvent) {
        List rewardsList = (List) ADFUtils.findOperation("getNewRewards").execute();
        if (rewardsList != null && !rewardsList.isEmpty()) {
            showRewards(rewardsList);
        }
    }

    private void showRewards(List rewardsList) {
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
