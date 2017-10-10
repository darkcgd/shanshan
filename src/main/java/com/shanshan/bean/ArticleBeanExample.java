package com.shanshan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ArticleBeanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArticleBeanExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andArticleIdIsNull() {
            addCriterion("article_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleIdIsNotNull() {
            addCriterion("article_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleIdEqualTo(Integer value) {
            addCriterion("article_id =", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotEqualTo(Integer value) {
            addCriterion("article_id <>", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThan(Integer value) {
            addCriterion("article_id >", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_id >=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThan(Integer value) {
            addCriterion("article_id <", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_id <=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdIn(List<Integer> values) {
            addCriterion("article_id in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotIn(List<Integer> values) {
            addCriterion("article_id not in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdBetween(Integer value1, Integer value2) {
            addCriterion("article_id between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_id not between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNull() {
            addCriterion("author is null");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNotNull() {
            addCriterion("author is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorEqualTo(String value) {
            addCriterion("author =", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotEqualTo(String value) {
            addCriterion("author <>", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThan(String value) {
            addCriterion("author >", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("author >=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThan(String value) {
            addCriterion("author <", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThanOrEqualTo(String value) {
            addCriterion("author <=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLike(String value) {
            addCriterion("author like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotLike(String value) {
            addCriterion("author not like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorIn(List<String> values) {
            addCriterion("author in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotIn(List<String> values) {
            addCriterion("author not in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorBetween(String value1, String value2) {
            addCriterion("author between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotBetween(String value1, String value2) {
            addCriterion("author not between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andCategoryNameIsNull() {
            addCriterion("category_name is null");
            return (Criteria) this;
        }

        public Criteria andCategoryNameIsNotNull() {
            addCriterion("category_name is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryNameEqualTo(String value) {
            addCriterion("category_name =", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameNotEqualTo(String value) {
            addCriterion("category_name <>", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameGreaterThan(String value) {
            addCriterion("category_name >", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameGreaterThanOrEqualTo(String value) {
            addCriterion("category_name >=", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameLessThan(String value) {
            addCriterion("category_name <", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameLessThanOrEqualTo(String value) {
            addCriterion("category_name <=", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameLike(String value) {
            addCriterion("category_name like", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameNotLike(String value) {
            addCriterion("category_name not like", value, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameIn(List<String> values) {
            addCriterion("category_name in", values, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameNotIn(List<String> values) {
            addCriterion("category_name not in", values, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameBetween(String value1, String value2) {
            addCriterion("category_name between", value1, value2, "categoryName");
            return (Criteria) this;
        }

        public Criteria andCategoryNameNotBetween(String value1, String value2) {
            addCriterion("category_name not between", value1, value2, "categoryName");
            return (Criteria) this;
        }

        public Criteria andTagIdIsNull() {
            addCriterion("tag_id is null");
            return (Criteria) this;
        }

        public Criteria andTagIdIsNotNull() {
            addCriterion("tag_id is not null");
            return (Criteria) this;
        }

        public Criteria andTagIdEqualTo(Integer value) {
            addCriterion("tag_id =", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdNotEqualTo(Integer value) {
            addCriterion("tag_id <>", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdGreaterThan(Integer value) {
            addCriterion("tag_id >", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("tag_id >=", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdLessThan(Integer value) {
            addCriterion("tag_id <", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdLessThanOrEqualTo(Integer value) {
            addCriterion("tag_id <=", value, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdIn(List<Integer> values) {
            addCriterion("tag_id in", values, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdNotIn(List<Integer> values) {
            addCriterion("tag_id not in", values, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdBetween(Integer value1, Integer value2) {
            addCriterion("tag_id between", value1, value2, "tagId");
            return (Criteria) this;
        }

        public Criteria andTagIdNotBetween(Integer value1, Integer value2) {
            addCriterion("tag_id not between", value1, value2, "tagId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdIsNull() {
            addCriterion("relate_activity_id is null");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdIsNotNull() {
            addCriterion("relate_activity_id is not null");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdEqualTo(Integer value) {
            addCriterion("relate_activity_id =", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdNotEqualTo(Integer value) {
            addCriterion("relate_activity_id <>", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdGreaterThan(Integer value) {
            addCriterion("relate_activity_id >", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("relate_activity_id >=", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdLessThan(Integer value) {
            addCriterion("relate_activity_id <", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdLessThanOrEqualTo(Integer value) {
            addCriterion("relate_activity_id <=", value, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdIn(List<Integer> values) {
            addCriterion("relate_activity_id in", values, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdNotIn(List<Integer> values) {
            addCriterion("relate_activity_id not in", values, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdBetween(Integer value1, Integer value2) {
            addCriterion("relate_activity_id between", value1, value2, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelateActivityIdNotBetween(Integer value1, Integer value2) {
            addCriterion("relate_activity_id not between", value1, value2, "relateActivityId");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeIsNull() {
            addCriterion("relate_permission_user_type is null");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeIsNotNull() {
            addCriterion("relate_permission_user_type is not null");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeEqualTo(Integer value) {
            addCriterion("relate_permission_user_type =", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeNotEqualTo(Integer value) {
            addCriterion("relate_permission_user_type <>", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeGreaterThan(Integer value) {
            addCriterion("relate_permission_user_type >", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("relate_permission_user_type >=", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeLessThan(Integer value) {
            addCriterion("relate_permission_user_type <", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeLessThanOrEqualTo(Integer value) {
            addCriterion("relate_permission_user_type <=", value, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeIn(List<Integer> values) {
            addCriterion("relate_permission_user_type in", values, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeNotIn(List<Integer> values) {
            addCriterion("relate_permission_user_type not in", values, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeBetween(Integer value1, Integer value2) {
            addCriterion("relate_permission_user_type between", value1, value2, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andRelatePermissionUserTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("relate_permission_user_type not between", value1, value2, "relatePermissionUserType");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andReadCountIsNull() {
            addCriterion("read_count is null");
            return (Criteria) this;
        }

        public Criteria andReadCountIsNotNull() {
            addCriterion("read_count is not null");
            return (Criteria) this;
        }

        public Criteria andReadCountEqualTo(Integer value) {
            addCriterion("read_count =", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountNotEqualTo(Integer value) {
            addCriterion("read_count <>", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountGreaterThan(Integer value) {
            addCriterion("read_count >", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("read_count >=", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountLessThan(Integer value) {
            addCriterion("read_count <", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountLessThanOrEqualTo(Integer value) {
            addCriterion("read_count <=", value, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountIn(List<Integer> values) {
            addCriterion("read_count in", values, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountNotIn(List<Integer> values) {
            addCriterion("read_count not in", values, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountBetween(Integer value1, Integer value2) {
            addCriterion("read_count between", value1, value2, "readCount");
            return (Criteria) this;
        }

        public Criteria andReadCountNotBetween(Integer value1, Integer value2) {
            addCriterion("read_count not between", value1, value2, "readCount");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyIsNull() {
            addCriterion("is_need_company is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyIsNotNull() {
            addCriterion("is_need_company is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyEqualTo(Integer value) {
            addCriterion("is_need_company =", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyNotEqualTo(Integer value) {
            addCriterion("is_need_company <>", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyGreaterThan(Integer value) {
            addCriterion("is_need_company >", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_company >=", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyLessThan(Integer value) {
            addCriterion("is_need_company <", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_company <=", value, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyIn(List<Integer> values) {
            addCriterion("is_need_company in", values, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyNotIn(List<Integer> values) {
            addCriterion("is_need_company not in", values, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyBetween(Integer value1, Integer value2) {
            addCriterion("is_need_company between", value1, value2, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_company not between", value1, value2, "isNeedCompany");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameIsNull() {
            addCriterion("is_need_user_name is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameIsNotNull() {
            addCriterion("is_need_user_name is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameEqualTo(Integer value) {
            addCriterion("is_need_user_name =", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameNotEqualTo(Integer value) {
            addCriterion("is_need_user_name <>", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameGreaterThan(Integer value) {
            addCriterion("is_need_user_name >", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_user_name >=", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameLessThan(Integer value) {
            addCriterion("is_need_user_name <", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_user_name <=", value, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameIn(List<Integer> values) {
            addCriterion("is_need_user_name in", values, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameNotIn(List<Integer> values) {
            addCriterion("is_need_user_name not in", values, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameBetween(Integer value1, Integer value2) {
            addCriterion("is_need_user_name between", value1, value2, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedUserNameNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_user_name not between", value1, value2, "isNeedUserName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneIsNull() {
            addCriterion("is_need_phone is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneIsNotNull() {
            addCriterion("is_need_phone is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneEqualTo(Integer value) {
            addCriterion("is_need_phone =", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneNotEqualTo(Integer value) {
            addCriterion("is_need_phone <>", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneGreaterThan(Integer value) {
            addCriterion("is_need_phone >", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_phone >=", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneLessThan(Integer value) {
            addCriterion("is_need_phone <", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_phone <=", value, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneIn(List<Integer> values) {
            addCriterion("is_need_phone in", values, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneNotIn(List<Integer> values) {
            addCriterion("is_need_phone not in", values, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneBetween(Integer value1, Integer value2) {
            addCriterion("is_need_phone between", value1, value2, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhoneNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_phone not between", value1, value2, "isNeedPhone");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressIsNull() {
            addCriterion("is_need_company_address is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressIsNotNull() {
            addCriterion("is_need_company_address is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressEqualTo(Integer value) {
            addCriterion("is_need_company_address =", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressNotEqualTo(Integer value) {
            addCriterion("is_need_company_address <>", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressGreaterThan(Integer value) {
            addCriterion("is_need_company_address >", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_company_address >=", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressLessThan(Integer value) {
            addCriterion("is_need_company_address <", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_company_address <=", value, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressIn(List<Integer> values) {
            addCriterion("is_need_company_address in", values, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressNotIn(List<Integer> values) {
            addCriterion("is_need_company_address not in", values, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressBetween(Integer value1, Integer value2) {
            addCriterion("is_need_company_address between", value1, value2, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedCompanyAddressNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_company_address not between", value1, value2, "isNeedCompanyAddress");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailIsNull() {
            addCriterion("is_need_email is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailIsNotNull() {
            addCriterion("is_need_email is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailEqualTo(Integer value) {
            addCriterion("is_need_email =", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailNotEqualTo(Integer value) {
            addCriterion("is_need_email <>", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailGreaterThan(Integer value) {
            addCriterion("is_need_email >", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_email >=", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailLessThan(Integer value) {
            addCriterion("is_need_email <", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_email <=", value, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailIn(List<Integer> values) {
            addCriterion("is_need_email in", values, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailNotIn(List<Integer> values) {
            addCriterion("is_need_email not in", values, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailBetween(Integer value1, Integer value2) {
            addCriterion("is_need_email between", value1, value2, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedEmailNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_email not between", value1, value2, "isNeedEmail");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameIsNull() {
            addCriterion("is_need_position_name is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameIsNotNull() {
            addCriterion("is_need_position_name is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameEqualTo(Integer value) {
            addCriterion("is_need_position_name =", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameNotEqualTo(Integer value) {
            addCriterion("is_need_position_name <>", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameGreaterThan(Integer value) {
            addCriterion("is_need_position_name >", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_position_name >=", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameLessThan(Integer value) {
            addCriterion("is_need_position_name <", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_position_name <=", value, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameIn(List<Integer> values) {
            addCriterion("is_need_position_name in", values, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameNotIn(List<Integer> values) {
            addCriterion("is_need_position_name not in", values, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameBetween(Integer value1, Integer value2) {
            addCriterion("is_need_position_name between", value1, value2, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedPositionNameNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_position_name not between", value1, value2, "isNeedPositionName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameIsNull() {
            addCriterion("is_need_department_name is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameIsNotNull() {
            addCriterion("is_need_department_name is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameEqualTo(Integer value) {
            addCriterion("is_need_department_name =", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameNotEqualTo(Integer value) {
            addCriterion("is_need_department_name <>", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameGreaterThan(Integer value) {
            addCriterion("is_need_department_name >", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_department_name >=", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameLessThan(Integer value) {
            addCriterion("is_need_department_name <", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_department_name <=", value, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameIn(List<Integer> values) {
            addCriterion("is_need_department_name in", values, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameNotIn(List<Integer> values) {
            addCriterion("is_need_department_name not in", values, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameBetween(Integer value1, Integer value2) {
            addCriterion("is_need_department_name between", value1, value2, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedDepartmentNameNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_department_name not between", value1, value2, "isNeedDepartmentName");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchIsNull() {
            addCriterion("is_need_free_lunch is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchIsNotNull() {
            addCriterion("is_need_free_lunch is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchEqualTo(Integer value) {
            addCriterion("is_need_free_lunch =", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchNotEqualTo(Integer value) {
            addCriterion("is_need_free_lunch <>", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchGreaterThan(Integer value) {
            addCriterion("is_need_free_lunch >", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_free_lunch >=", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchLessThan(Integer value) {
            addCriterion("is_need_free_lunch <", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_free_lunch <=", value, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchIn(List<Integer> values) {
            addCriterion("is_need_free_lunch in", values, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchNotIn(List<Integer> values) {
            addCriterion("is_need_free_lunch not in", values, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchBetween(Integer value1, Integer value2) {
            addCriterion("is_need_free_lunch between", value1, value2, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedFreeLunchNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_free_lunch not between", value1, value2, "isNeedFreeLunch");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationIsNull() {
            addCriterion("is_need_provide_accommodation is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationIsNotNull() {
            addCriterion("is_need_provide_accommodation is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationEqualTo(Integer value) {
            addCriterion("is_need_provide_accommodation =", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationNotEqualTo(Integer value) {
            addCriterion("is_need_provide_accommodation <>", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationGreaterThan(Integer value) {
            addCriterion("is_need_provide_accommodation >", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_provide_accommodation >=", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationLessThan(Integer value) {
            addCriterion("is_need_provide_accommodation <", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_provide_accommodation <=", value, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationIn(List<Integer> values) {
            addCriterion("is_need_provide_accommodation in", values, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationNotIn(List<Integer> values) {
            addCriterion("is_need_provide_accommodation not in", values, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationBetween(Integer value1, Integer value2) {
            addCriterion("is_need_provide_accommodation between", value1, value2, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedProvideAccommodationNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_provide_accommodation not between", value1, value2, "isNeedProvideAccommodation");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateIsNull() {
            addCriterion("is_need_join_date is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateIsNotNull() {
            addCriterion("is_need_join_date is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateEqualTo(Integer value) {
            addCriterion("is_need_join_date =", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateNotEqualTo(Integer value) {
            addCriterion("is_need_join_date <>", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateGreaterThan(Integer value) {
            addCriterion("is_need_join_date >", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_join_date >=", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateLessThan(Integer value) {
            addCriterion("is_need_join_date <", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_join_date <=", value, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateIn(List<Integer> values) {
            addCriterion("is_need_join_date in", values, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateNotIn(List<Integer> values) {
            addCriterion("is_need_join_date not in", values, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateBetween(Integer value1, Integer value2) {
            addCriterion("is_need_join_date between", value1, value2, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedJoinDateNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_join_date not between", value1, value2, "isNeedJoinDate");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceIsNull() {
            addCriterion("is_need_source is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceIsNotNull() {
            addCriterion("is_need_source is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceEqualTo(Integer value) {
            addCriterion("is_need_source =", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceNotEqualTo(Integer value) {
            addCriterion("is_need_source <>", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceGreaterThan(Integer value) {
            addCriterion("is_need_source >", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_source >=", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceLessThan(Integer value) {
            addCriterion("is_need_source <", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_source <=", value, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceIn(List<Integer> values) {
            addCriterion("is_need_source in", values, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceNotIn(List<Integer> values) {
            addCriterion("is_need_source not in", values, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceBetween(Integer value1, Integer value2) {
            addCriterion("is_need_source between", value1, value2, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedSourceNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_source not between", value1, value2, "isNeedSource");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoIsNull() {
            addCriterion("is_need_photo is null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoIsNotNull() {
            addCriterion("is_need_photo is not null");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoEqualTo(Integer value) {
            addCriterion("is_need_photo =", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoNotEqualTo(Integer value) {
            addCriterion("is_need_photo <>", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoGreaterThan(Integer value) {
            addCriterion("is_need_photo >", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_need_photo >=", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoLessThan(Integer value) {
            addCriterion("is_need_photo <", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoLessThanOrEqualTo(Integer value) {
            addCriterion("is_need_photo <=", value, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoIn(List<Integer> values) {
            addCriterion("is_need_photo in", values, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoNotIn(List<Integer> values) {
            addCriterion("is_need_photo not in", values, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoBetween(Integer value1, Integer value2) {
            addCriterion("is_need_photo between", value1, value2, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andIsNeedPhotoNotBetween(Integer value1, Integer value2) {
            addCriterion("is_need_photo not between", value1, value2, "isNeedPhoto");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNull() {
            addCriterion("start_Time is null");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNotNull() {
            addCriterion("start_Time is not null");
            return (Criteria) this;
        }

        public Criteria andStartTimeEqualTo(Date value) {
            addCriterion("start_Time =", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotEqualTo(Date value) {
            addCriterion("start_Time <>", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThan(Date value) {
            addCriterion("start_Time >", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("start_Time >=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThan(Date value) {
            addCriterion("start_Time <", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThanOrEqualTo(Date value) {
            addCriterion("start_Time <=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIn(List<Date> values) {
            addCriterion("start_Time in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotIn(List<Date> values) {
            addCriterion("start_Time not in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeBetween(Date value1, Date value2) {
            addCriterion("start_Time between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotBetween(Date value1, Date value2) {
            addCriterion("start_Time not between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNull() {
            addCriterion("end_Time is null");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNotNull() {
            addCriterion("end_Time is not null");
            return (Criteria) this;
        }

        public Criteria andEndTimeEqualTo(Date value) {
            addCriterion("end_Time =", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotEqualTo(Date value) {
            addCriterion("end_Time <>", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThan(Date value) {
            addCriterion("end_Time >", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("end_Time >=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThan(Date value) {
            addCriterion("end_Time <", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("end_Time <=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIn(List<Date> values) {
            addCriterion("end_Time in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotIn(List<Date> values) {
            addCriterion("end_Time not in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeBetween(Date value1, Date value2) {
            addCriterion("end_Time between", value1, value2, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("end_Time not between", value1, value2, "endTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}