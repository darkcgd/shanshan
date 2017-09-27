package com.shanshan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TechnologyUserBeanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TechnologyUserBeanExample() {
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

        public Criteria andTechnologyIdIsNull() {
            addCriterion("technology_id is null");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdIsNotNull() {
            addCriterion("technology_id is not null");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdEqualTo(Integer value) {
            addCriterion("technology_id =", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdNotEqualTo(Integer value) {
            addCriterion("technology_id <>", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdGreaterThan(Integer value) {
            addCriterion("technology_id >", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("technology_id >=", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdLessThan(Integer value) {
            addCriterion("technology_id <", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdLessThanOrEqualTo(Integer value) {
            addCriterion("technology_id <=", value, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdIn(List<Integer> values) {
            addCriterion("technology_id in", values, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdNotIn(List<Integer> values) {
            addCriterion("technology_id not in", values, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdBetween(Integer value1, Integer value2) {
            addCriterion("technology_id between", value1, value2, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("technology_id not between", value1, value2, "technologyId");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameIsNull() {
            addCriterion("technology_name is null");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameIsNotNull() {
            addCriterion("technology_name is not null");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameEqualTo(String value) {
            addCriterion("technology_name =", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameNotEqualTo(String value) {
            addCriterion("technology_name <>", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameGreaterThan(String value) {
            addCriterion("technology_name >", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameGreaterThanOrEqualTo(String value) {
            addCriterion("technology_name >=", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameLessThan(String value) {
            addCriterion("technology_name <", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameLessThanOrEqualTo(String value) {
            addCriterion("technology_name <=", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameLike(String value) {
            addCriterion("technology_name like", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameNotLike(String value) {
            addCriterion("technology_name not like", value, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameIn(List<String> values) {
            addCriterion("technology_name in", values, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameNotIn(List<String> values) {
            addCriterion("technology_name not in", values, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameBetween(String value1, String value2) {
            addCriterion("technology_name between", value1, value2, "technologyName");
            return (Criteria) this;
        }

        public Criteria andTechnologyNameNotBetween(String value1, String value2) {
            addCriterion("technology_name not between", value1, value2, "technologyName");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdIsNull() {
            addCriterion("wx_union_id is null");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdIsNotNull() {
            addCriterion("wx_union_id is not null");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdEqualTo(String value) {
            addCriterion("wx_union_id =", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdNotEqualTo(String value) {
            addCriterion("wx_union_id <>", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdGreaterThan(String value) {
            addCriterion("wx_union_id >", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdGreaterThanOrEqualTo(String value) {
            addCriterion("wx_union_id >=", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdLessThan(String value) {
            addCriterion("wx_union_id <", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdLessThanOrEqualTo(String value) {
            addCriterion("wx_union_id <=", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdLike(String value) {
            addCriterion("wx_union_id like", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdNotLike(String value) {
            addCriterion("wx_union_id not like", value, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdIn(List<String> values) {
            addCriterion("wx_union_id in", values, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdNotIn(List<String> values) {
            addCriterion("wx_union_id not in", values, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdBetween(String value1, String value2) {
            addCriterion("wx_union_id between", value1, value2, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxUnionIdNotBetween(String value1, String value2) {
            addCriterion("wx_union_id not between", value1, value2, "wxUnionId");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenIsNull() {
            addCriterion("wx_access_token is null");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenIsNotNull() {
            addCriterion("wx_access_token is not null");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenEqualTo(String value) {
            addCriterion("wx_access_token =", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenNotEqualTo(String value) {
            addCriterion("wx_access_token <>", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenGreaterThan(String value) {
            addCriterion("wx_access_token >", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenGreaterThanOrEqualTo(String value) {
            addCriterion("wx_access_token >=", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenLessThan(String value) {
            addCriterion("wx_access_token <", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenLessThanOrEqualTo(String value) {
            addCriterion("wx_access_token <=", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenLike(String value) {
            addCriterion("wx_access_token like", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenNotLike(String value) {
            addCriterion("wx_access_token not like", value, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenIn(List<String> values) {
            addCriterion("wx_access_token in", values, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenNotIn(List<String> values) {
            addCriterion("wx_access_token not in", values, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenBetween(String value1, String value2) {
            addCriterion("wx_access_token between", value1, value2, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andWxAccessTokenNotBetween(String value1, String value2) {
            addCriterion("wx_access_token not between", value1, value2, "wxAccessToken");
            return (Criteria) this;
        }

        public Criteria andPwdIsNull() {
            addCriterion("pwd is null");
            return (Criteria) this;
        }

        public Criteria andPwdIsNotNull() {
            addCriterion("pwd is not null");
            return (Criteria) this;
        }

        public Criteria andPwdEqualTo(String value) {
            addCriterion("pwd =", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotEqualTo(String value) {
            addCriterion("pwd <>", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdGreaterThan(String value) {
            addCriterion("pwd >", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdGreaterThanOrEqualTo(String value) {
            addCriterion("pwd >=", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLessThan(String value) {
            addCriterion("pwd <", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLessThanOrEqualTo(String value) {
            addCriterion("pwd <=", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdLike(String value) {
            addCriterion("pwd like", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotLike(String value) {
            addCriterion("pwd not like", value, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdIn(List<String> values) {
            addCriterion("pwd in", values, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotIn(List<String> values) {
            addCriterion("pwd not in", values, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdBetween(String value1, String value2) {
            addCriterion("pwd between", value1, value2, "pwd");
            return (Criteria) this;
        }

        public Criteria andPwdNotBetween(String value1, String value2) {
            addCriterion("pwd not between", value1, value2, "pwd");
            return (Criteria) this;
        }

        public Criteria andHeadUrlIsNull() {
            addCriterion("head_url is null");
            return (Criteria) this;
        }

        public Criteria andHeadUrlIsNotNull() {
            addCriterion("head_url is not null");
            return (Criteria) this;
        }

        public Criteria andHeadUrlEqualTo(String value) {
            addCriterion("head_url =", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlNotEqualTo(String value) {
            addCriterion("head_url <>", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlGreaterThan(String value) {
            addCriterion("head_url >", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlGreaterThanOrEqualTo(String value) {
            addCriterion("head_url >=", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlLessThan(String value) {
            addCriterion("head_url <", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlLessThanOrEqualTo(String value) {
            addCriterion("head_url <=", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlLike(String value) {
            addCriterion("head_url like", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlNotLike(String value) {
            addCriterion("head_url not like", value, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlIn(List<String> values) {
            addCriterion("head_url in", values, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlNotIn(List<String> values) {
            addCriterion("head_url not in", values, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlBetween(String value1, String value2) {
            addCriterion("head_url between", value1, value2, "headUrl");
            return (Criteria) this;
        }

        public Criteria andHeadUrlNotBetween(String value1, String value2) {
            addCriterion("head_url not between", value1, value2, "headUrl");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andAgeIsNull() {
            addCriterion("age is null");
            return (Criteria) this;
        }

        public Criteria andAgeIsNotNull() {
            addCriterion("age is not null");
            return (Criteria) this;
        }

        public Criteria andAgeEqualTo(Integer value) {
            addCriterion("age =", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotEqualTo(Integer value) {
            addCriterion("age <>", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThan(Integer value) {
            addCriterion("age >", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("age >=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThan(Integer value) {
            addCriterion("age <", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThanOrEqualTo(Integer value) {
            addCriterion("age <=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeIn(List<Integer> values) {
            addCriterion("age in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotIn(List<Integer> values) {
            addCriterion("age not in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeBetween(Integer value1, Integer value2) {
            addCriterion("age between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("age not between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(Integer value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(Integer value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(Integer value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(Integer value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(Integer value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(Integer value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<Integer> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<Integer> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(Integer value1, Integer value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(Integer value1, Integer value2) {
            addCriterion("sex not between", value1, value2, "sex");
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

        public Criteria andLastLoginTimeIsNull() {
            addCriterion("last_login_time is null");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeIsNotNull() {
            addCriterion("last_login_time is not null");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeEqualTo(Date value) {
            addCriterion("last_login_time =", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeNotEqualTo(Date value) {
            addCriterion("last_login_time <>", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeGreaterThan(Date value) {
            addCriterion("last_login_time >", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("last_login_time >=", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeLessThan(Date value) {
            addCriterion("last_login_time <", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeLessThanOrEqualTo(Date value) {
            addCriterion("last_login_time <=", value, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeIn(List<Date> values) {
            addCriterion("last_login_time in", values, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeNotIn(List<Date> values) {
            addCriterion("last_login_time not in", values, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeBetween(Date value1, Date value2) {
            addCriterion("last_login_time between", value1, value2, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andLastLoginTimeNotBetween(Date value1, Date value2) {
            addCriterion("last_login_time not between", value1, value2, "lastLoginTime");
            return (Criteria) this;
        }

        public Criteria andUserTypeIsNull() {
            addCriterion("user_type is null");
            return (Criteria) this;
        }

        public Criteria andUserTypeIsNotNull() {
            addCriterion("user_type is not null");
            return (Criteria) this;
        }

        public Criteria andUserTypeEqualTo(Integer value) {
            addCriterion("user_type =", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotEqualTo(Integer value) {
            addCriterion("user_type <>", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeGreaterThan(Integer value) {
            addCriterion("user_type >", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_type >=", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeLessThan(Integer value) {
            addCriterion("user_type <", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeLessThanOrEqualTo(Integer value) {
            addCriterion("user_type <=", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeIn(List<Integer> values) {
            addCriterion("user_type in", values, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotIn(List<Integer> values) {
            addCriterion("user_type not in", values, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeBetween(Integer value1, Integer value2) {
            addCriterion("user_type between", value1, value2, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("user_type not between", value1, value2, "userType");
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

        public Criteria andCompanyIdIsNull() {
            addCriterion("company_id is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIsNotNull() {
            addCriterion("company_id is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdEqualTo(Integer value) {
            addCriterion("company_id =", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotEqualTo(Integer value) {
            addCriterion("company_id <>", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThan(Integer value) {
            addCriterion("company_id >", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_id >=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThan(Integer value) {
            addCriterion("company_id <", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThanOrEqualTo(Integer value) {
            addCriterion("company_id <=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIn(List<Integer> values) {
            addCriterion("company_id in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotIn(List<Integer> values) {
            addCriterion("company_id not in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdBetween(Integer value1, Integer value2) {
            addCriterion("company_id between", value1, value2, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("company_id not between", value1, value2, "companyId");
            return (Criteria) this;
        }

        public Criteria andAttributesIsNull() {
            addCriterion("attributes is null");
            return (Criteria) this;
        }

        public Criteria andAttributesIsNotNull() {
            addCriterion("attributes is not null");
            return (Criteria) this;
        }

        public Criteria andAttributesEqualTo(String value) {
            addCriterion("attributes =", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesNotEqualTo(String value) {
            addCriterion("attributes <>", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesGreaterThan(String value) {
            addCriterion("attributes >", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesGreaterThanOrEqualTo(String value) {
            addCriterion("attributes >=", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesLessThan(String value) {
            addCriterion("attributes <", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesLessThanOrEqualTo(String value) {
            addCriterion("attributes <=", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesLike(String value) {
            addCriterion("attributes like", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesNotLike(String value) {
            addCriterion("attributes not like", value, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesIn(List<String> values) {
            addCriterion("attributes in", values, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesNotIn(List<String> values) {
            addCriterion("attributes not in", values, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesBetween(String value1, String value2) {
            addCriterion("attributes between", value1, value2, "attributes");
            return (Criteria) this;
        }

        public Criteria andAttributesNotBetween(String value1, String value2) {
            addCriterion("attributes not between", value1, value2, "attributes");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsIsNull() {
            addCriterion("experience_years is null");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsIsNotNull() {
            addCriterion("experience_years is not null");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsEqualTo(String value) {
            addCriterion("experience_years =", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsNotEqualTo(String value) {
            addCriterion("experience_years <>", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsGreaterThan(String value) {
            addCriterion("experience_years >", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsGreaterThanOrEqualTo(String value) {
            addCriterion("experience_years >=", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsLessThan(String value) {
            addCriterion("experience_years <", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsLessThanOrEqualTo(String value) {
            addCriterion("experience_years <=", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsLike(String value) {
            addCriterion("experience_years like", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsNotLike(String value) {
            addCriterion("experience_years not like", value, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsIn(List<String> values) {
            addCriterion("experience_years in", values, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsNotIn(List<String> values) {
            addCriterion("experience_years not in", values, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsBetween(String value1, String value2) {
            addCriterion("experience_years between", value1, value2, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExperienceYearsNotBetween(String value1, String value2) {
            addCriterion("experience_years not between", value1, value2, "experienceYears");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasIsNull() {
            addCriterion("expertise_areas is null");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasIsNotNull() {
            addCriterion("expertise_areas is not null");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasEqualTo(String value) {
            addCriterion("expertise_areas =", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasNotEqualTo(String value) {
            addCriterion("expertise_areas <>", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasGreaterThan(String value) {
            addCriterion("expertise_areas >", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasGreaterThanOrEqualTo(String value) {
            addCriterion("expertise_areas >=", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasLessThan(String value) {
            addCriterion("expertise_areas <", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasLessThanOrEqualTo(String value) {
            addCriterion("expertise_areas <=", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasLike(String value) {
            addCriterion("expertise_areas like", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasNotLike(String value) {
            addCriterion("expertise_areas not like", value, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasIn(List<String> values) {
            addCriterion("expertise_areas in", values, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasNotIn(List<String> values) {
            addCriterion("expertise_areas not in", values, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasBetween(String value1, String value2) {
            addCriterion("expertise_areas between", value1, value2, "expertiseAreas");
            return (Criteria) this;
        }

        public Criteria andExpertiseAreasNotBetween(String value1, String value2) {
            addCriterion("expertise_areas not between", value1, value2, "expertiseAreas");
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