package com.shanshan.bean;

import java.util.Date;

public class EquipmentTypeBean {
    private Integer equipmentTypeId;

    private Integer equipmentTypeName;

    private Integer equipmentParentTypeId;

    private Date createTime;

    private Date updateTime;

    private String remark;

    public Integer getEquipmentTypeId() {
        return equipmentTypeId;
    }

    public void setEquipmentTypeId(Integer equipmentTypeId) {
        this.equipmentTypeId = equipmentTypeId;
    }

    public Integer getEquipmentTypeName() {
        return equipmentTypeName;
    }

    public void setEquipmentTypeName(Integer equipmentTypeName) {
        this.equipmentTypeName = equipmentTypeName;
    }

    public Integer getEquipmentParentTypeId() {
        return equipmentParentTypeId;
    }

    public void setEquipmentParentTypeId(Integer equipmentParentTypeId) {
        this.equipmentParentTypeId = equipmentParentTypeId;
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
}