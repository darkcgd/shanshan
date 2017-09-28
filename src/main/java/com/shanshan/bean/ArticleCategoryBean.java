package com.shanshan.bean;

import java.util.Date;

public class ArticleCategoryBean {
    private Integer articleCategoryId;

    private String articleCategoryName;

    private Integer articleCategoryParentId;

    private Date createTime;

    private Date updateTime;

    private String remark;

    public Integer getArticleCategoryId() {
        return articleCategoryId;
    }

    public void setArticleCategoryId(Integer articleCategoryId) {
        this.articleCategoryId = articleCategoryId;
    }

    public String getArticleCategoryName() {
        return articleCategoryName;
    }

    public void setArticleCategoryName(String articleCategoryName) {
        this.articleCategoryName = articleCategoryName == null ? null : articleCategoryName.trim();
    }

    public Integer getArticleCategoryParentId() {
        return articleCategoryParentId;
    }

    public void setArticleCategoryParentId(Integer articleCategoryParentId) {
        this.articleCategoryParentId = articleCategoryParentId;
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