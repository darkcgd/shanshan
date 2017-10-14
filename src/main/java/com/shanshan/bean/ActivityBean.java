package com.shanshan.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ActivityBean {
    private Integer activityId;

    private String title;

    private String author;

    private String content;

    private Integer tagId;

    private Integer relatePermissionUserType;

    private Integer status;

    private Integer readCount;

    @DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date createTime;

    @DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date updateTime;

    private String remark;

    private Integer isNeedCompany;

    private Integer isNeedUserName;

    private Integer isNeedPhone;

    private Integer isNeedCompanyAddress;

    private Integer isNeedEmail;

    private Integer isNeedPositionName;

    private Integer isNeedDepartmentName;

    private Integer isNeedFreeLunch;

    private Integer isNeedProvideAccommodation;

    private Integer isNeedJoinDate;

    private Integer isNeedSource;

    private Integer isNeedPhoto;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date startTime;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date endTime;

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public Integer getRelatePermissionUserType() {
        return relatePermissionUserType;
    }

    public void setRelatePermissionUserType(Integer relatePermissionUserType) {
        this.relatePermissionUserType = relatePermissionUserType;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getReadCount() {
        return readCount;
    }

    public void setReadCount(Integer readCount) {
        this.readCount = readCount;
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

    public Integer getIsNeedCompany() {
        return isNeedCompany;
    }

    public void setIsNeedCompany(Integer isNeedCompany) {
        this.isNeedCompany = isNeedCompany;
    }

    public Integer getIsNeedUserName() {
        return isNeedUserName;
    }

    public void setIsNeedUserName(Integer isNeedUserName) {
        this.isNeedUserName = isNeedUserName;
    }

    public Integer getIsNeedPhone() {
        return isNeedPhone;
    }

    public void setIsNeedPhone(Integer isNeedPhone) {
        this.isNeedPhone = isNeedPhone;
    }

    public Integer getIsNeedCompanyAddress() {
        return isNeedCompanyAddress;
    }

    public void setIsNeedCompanyAddress(Integer isNeedCompanyAddress) {
        this.isNeedCompanyAddress = isNeedCompanyAddress;
    }

    public Integer getIsNeedEmail() {
        return isNeedEmail;
    }

    public void setIsNeedEmail(Integer isNeedEmail) {
        this.isNeedEmail = isNeedEmail;
    }

    public Integer getIsNeedPositionName() {
        return isNeedPositionName;
    }

    public void setIsNeedPositionName(Integer isNeedPositionName) {
        this.isNeedPositionName = isNeedPositionName;
    }

    public Integer getIsNeedDepartmentName() {
        return isNeedDepartmentName;
    }

    public void setIsNeedDepartmentName(Integer isNeedDepartmentName) {
        this.isNeedDepartmentName = isNeedDepartmentName;
    }

    public Integer getIsNeedFreeLunch() {
        return isNeedFreeLunch;
    }

    public void setIsNeedFreeLunch(Integer isNeedFreeLunch) {
        this.isNeedFreeLunch = isNeedFreeLunch;
    }

    public Integer getIsNeedProvideAccommodation() {
        return isNeedProvideAccommodation;
    }

    public void setIsNeedProvideAccommodation(Integer isNeedProvideAccommodation) {
        this.isNeedProvideAccommodation = isNeedProvideAccommodation;
    }

    public Integer getIsNeedJoinDate() {
        return isNeedJoinDate;
    }

    public void setIsNeedJoinDate(Integer isNeedJoinDate) {
        this.isNeedJoinDate = isNeedJoinDate;
    }

    public Integer getIsNeedSource() {
        return isNeedSource;
    }

    public void setIsNeedSource(Integer isNeedSource) {
        this.isNeedSource = isNeedSource;
    }

    public Integer getIsNeedPhoto() {
        return isNeedPhoto;
    }

    public void setIsNeedPhoto(Integer isNeedPhoto) {
        this.isNeedPhoto = isNeedPhoto;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}