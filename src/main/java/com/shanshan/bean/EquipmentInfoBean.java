package com.shanshan.bean;

import java.util.Date;

public class EquipmentInfoBean {
    private Integer equipmentId;

    private Date createTime;

    private Date updateTime;

    private String remark;

    private String equipmentName;

    private Integer equipmentParentId;

    private Integer equipmentCategory;

    private String logo;

    private String introduce;

    private String params;

    private String datas;

    private Integer relatePermissionUserType;

    public Integer getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(Integer equipmentId) {
        this.equipmentId = equipmentId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getEquipmentName() {
        return equipmentName;
    }

    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName == null ? null : equipmentName.trim();
    }

    public Integer getEquipmentParentId() {
        return equipmentParentId;
    }

    public void setEquipmentParentId(Integer equipmentParentId) {
        this.equipmentParentId = equipmentParentId;
    }

    public Integer getEquipmentCategory() {
        return equipmentCategory;
    }

    public void setEquipmentCategory(Integer equipmentCategory) {
        this.equipmentCategory = equipmentCategory;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params == null ? null : params.trim();
    }

    public String getDatas() {
        return datas;
    }

    public void setDatas(String datas) {
        this.datas = datas == null ? null : datas.trim();
    }

    public Integer getRelatePermissionUserType() {
        return relatePermissionUserType;
    }

    public void setRelatePermissionUserType(Integer relatePermissionUserType) {
        this.relatePermissionUserType = relatePermissionUserType;
    }
}