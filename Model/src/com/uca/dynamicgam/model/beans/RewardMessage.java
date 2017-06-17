package com.uca.dynamicgam.model.beans;

public class RewardMessage {
    private Long idReward = null;
    private String name = null;
    private String image = null;
    private Integer qty = null;
    private String description = null;


    public RewardMessage() {
        super();
    }

    public RewardMessage(Long idReward, String name, String description, Integer qty, String image) {
        super();
        this.idReward = idReward;
        this.name = name;
        this.description = description;
        this.qty = qty;
        this.image = image;
    }

    @Override
    public boolean equals(Object other) {
        return other != null && other instanceof RewardMessage && this.idReward != null &&
               this.idReward.equals(((RewardMessage) other).getIdReward());
    }

    public void setIdReward(Long idReward) {
        this.idReward = idReward;
    }

    public Long getIdReward() {
        return idReward;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    public Integer getQty() {
        return qty;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
