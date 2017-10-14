package com.shanshan.bean;

import java.util.Date;

public class EnrollBean {
    private Integer enrollId;

    private Date createTime;

    private Date updateTime;

    private String remark;

    private Integer fromType;

    private Integer fromId;

    private String company;

    private String userName;

    private String phone;

    private String companyAddress;

    private String email;

    private String positionName;

    private String departmentName;

    private Integer freeLunch;

    private Integer provideAccommodation;

    private String joinDate;

    private String source;

    private String photo1;

    private String photo2;

    private String photo3;

    private String photo4;

    private Integer userId;

    public Integer getEnrollId() {
        return enrollId;
    }

    public void setEnrollId(Integer enrollId) {
        this.enrollId = enrollId;
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

    public Integer getFromType() {
        return fromType;
    }

    public void setFromType(Integer fromType) {
        this.fromType = fromType;
    }

    public Integer getFromId() {
        return fromId;
    }

    public void setFromId(Integer fromId) {
        this.fromId = fromId;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress == null ? null : companyAddress.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName == null ? null : positionName.trim();
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName == null ? null : departmentName.trim();
    }

    public Integer getFreeLunch() {
        return freeLunch;
    }

    public void setFreeLunch(Integer freeLunch) {
        this.freeLunch = freeLunch;
    }

    public Integer getProvideAccommodation() {
        return provideAccommodation;
    }

    public void setProvideAccommodation(Integer provideAccommodation) {
        this.provideAccommodation = provideAccommodation;
    }

    public String getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(String joinDate) {
        this.joinDate = joinDate == null ? null : joinDate.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}