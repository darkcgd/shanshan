package com.shanshan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ArticleCategoryBeanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArticleCategoryBeanExample() {
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

        public Criteria andArticleCategoryIdIsNull() {
            addCriterion("article_category_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdIsNotNull() {
            addCriterion("article_category_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdEqualTo(Integer value) {
            addCriterion("article_category_id =", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdNotEqualTo(Integer value) {
            addCriterion("article_category_id <>", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdGreaterThan(Integer value) {
            addCriterion("article_category_id >", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_category_id >=", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdLessThan(Integer value) {
            addCriterion("article_category_id <", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_category_id <=", value, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdIn(List<Integer> values) {
            addCriterion("article_category_id in", values, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdNotIn(List<Integer> values) {
            addCriterion("article_category_id not in", values, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("article_category_id between", value1, value2, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_category_id not between", value1, value2, "articleCategoryId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameIsNull() {
            addCriterion("article_category_name is null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameIsNotNull() {
            addCriterion("article_category_name is not null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameEqualTo(String value) {
            addCriterion("article_category_name =", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameNotEqualTo(String value) {
            addCriterion("article_category_name <>", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameGreaterThan(String value) {
            addCriterion("article_category_name >", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameGreaterThanOrEqualTo(String value) {
            addCriterion("article_category_name >=", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameLessThan(String value) {
            addCriterion("article_category_name <", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameLessThanOrEqualTo(String value) {
            addCriterion("article_category_name <=", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameLike(String value) {
            addCriterion("article_category_name like", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameNotLike(String value) {
            addCriterion("article_category_name not like", value, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameIn(List<String> values) {
            addCriterion("article_category_name in", values, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameNotIn(List<String> values) {
            addCriterion("article_category_name not in", values, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameBetween(String value1, String value2) {
            addCriterion("article_category_name between", value1, value2, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryNameNotBetween(String value1, String value2) {
            addCriterion("article_category_name not between", value1, value2, "articleCategoryName");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdIsNull() {
            addCriterion("article_category_parent_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdIsNotNull() {
            addCriterion("article_category_parent_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdEqualTo(Integer value) {
            addCriterion("article_category_parent_id =", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdNotEqualTo(Integer value) {
            addCriterion("article_category_parent_id <>", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdGreaterThan(Integer value) {
            addCriterion("article_category_parent_id >", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_category_parent_id >=", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdLessThan(Integer value) {
            addCriterion("article_category_parent_id <", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_category_parent_id <=", value, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdIn(List<Integer> values) {
            addCriterion("article_category_parent_id in", values, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdNotIn(List<Integer> values) {
            addCriterion("article_category_parent_id not in", values, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdBetween(Integer value1, Integer value2) {
            addCriterion("article_category_parent_id between", value1, value2, "articleCategoryParentId");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryParentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_category_parent_id not between", value1, value2, "articleCategoryParentId");
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