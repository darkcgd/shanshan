package com.shanshan.bean;

import java.util.Date;

public class FaultRepairBean {
    private Integer repairId;

    private Date createTime;

    private Date updateTime;

    private String remark;

    private String machineToolBrand;

    private String machineToolModel;

    private String machineToolSn;

    private String contactsName;

    private String contactsPhone;

    private String describe;

    private String photo1;

    private String photo2;

    private String photo3;

    private String photo4;

    public Integer getRepairId() {
        return repairId;
    }

    public void setRepairId(Integer repairId) {
        this.repairId = repairId;
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

    public String getMachineToolBrand() {
        return machineToolBrand;
    }

    public void setMachineToolBrand(String machineToolBrand) {
        this.machineToolBrand = machineToolBrand == null ? null : machineToolBrand.trim();
    }

    public String getMachineToolModel() {
        return machineToolModel;
    }

    public void setMachineToolModel(String machineToolModel) {
        this.machineToolModel = machineToolModel == null ? null : machineToolModel.trim();
    }

    public String getMachineToolSn() {
        return machineToolSn;
    }

    public void setMachineToolSn(String machineToolSn) {
        this.machineToolSn = machineToolSn == null ? null : machineToolSn.trim();
    }

    public String getContactsName() {
        return contactsName;
    }

    public void setContactsName(String contactsName) {
        this.contactsName = contactsName == null ? null : contactsName.trim();
    }

    public String getContactsPhone() {
        return contactsPhone;
    }

    public void setContactsPhone(String contactsPhone) {
        this.contactsPhone = contactsPhone == null ? null : contactsPhone.trim();
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    public String getPhoto1() {
        return photo1;
    }

    public void setPhoto1(String photo1) {
        this.photo1 = photo1 == null ? null : photo1.trim();
    }

    public String getPhoto2() {
        return photo2;
    }

    public void setPhoto2(String photo2) {
        this.photo2 = photo2 == null ? null : photo2.trim();
    }

    public String getPhoto3() {
        return photo3;
    }

    public void setPhoto3(String photo3) {
        this.photo3 = photo3 == null ? null : photo3.trim();
    }

    public String getPhoto4() {
        return photo4;
    }

    public void setPhoto4(String photo4) {
        this.photo4 = photo4 == null ? null : photo4.trim();
    }
}