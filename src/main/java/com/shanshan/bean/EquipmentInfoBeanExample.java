package com.shanshan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EquipmentInfoBeanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EquipmentInfoBeanExample() {
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

        public Criteria andEquipmentIdIsNull() {
            addCriterion("equipment_id is null");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdIsNotNull() {
            addCriterion("equipment_id is not null");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdEqualTo(Integer value) {
            addCriterion("equipment_id =", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdNotEqualTo(Integer value) {
            addCriterion("equipment_id <>", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdGreaterThan(Integer value) {
            addCriterion("equipment_id >", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("equipment_id >=", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdLessThan(Integer value) {
            addCriterion("equipment_id <", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdLessThanOrEqualTo(Integer value) {
            addCriterion("equipment_id <=", value, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdIn(List<Integer> values) {
            addCriterion("equipment_id in", values, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdNotIn(List<Integer> values) {
            addCriterion("equipment_id not in", values, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdBetween(Integer value1, Integer value2) {
            addCriterion("equipment_id between", value1, value2, "equipmentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("equipment_id not between", value1, value2, "equipmentId");
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

        public Criteria andEquipmentNameIsNull() {
            addCriterion("equipment_name is null");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameIsNotNull() {
            addCriterion("equipment_name is not null");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameEqualTo(String value) {
            addCriterion("equipment_name =", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameNotEqualTo(String value) {
            addCriterion("equipment_name <>", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameGreaterThan(String value) {
            addCriterion("equipment_name >", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameGreaterThanOrEqualTo(String value) {
            addCriterion("equipment_name >=", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameLessThan(String value) {
            addCriterion("equipment_name <", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameLessThanOrEqualTo(String value) {
            addCriterion("equipment_name <=", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameLike(String value) {
            addCriterion("equipment_name like", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameNotLike(String value) {
            addCriterion("equipment_name not like", value, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameIn(List<String> values) {
            addCriterion("equipment_name in", values, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameNotIn(List<String> values) {
            addCriterion("equipment_name not in", values, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameBetween(String value1, String value2) {
            addCriterion("equipment_name between", value1, value2, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentNameNotBetween(String value1, String value2) {
            addCriterion("equipment_name not between", value1, value2, "equipmentName");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdIsNull() {
            addCriterion("equipment_parent_id is null");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdIsNotNull() {
            addCriterion("equipment_parent_id is not null");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdEqualTo(Integer value) {
            addCriterion("equipment_parent_id =", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdNotEqualTo(Integer value) {
            addCriterion("equipment_parent_id <>", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdGreaterThan(Integer value) {
            addCriterion("equipment_parent_id >", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("equipment_parent_id >=", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdLessThan(Integer value) {
            addCriterion("equipment_parent_id <", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdLessThanOrEqualTo(Integer value) {
            addCriterion("equipment_parent_id <=", value, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdIn(List<Integer> values) {
            addCriterion("equipment_parent_id in", values, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdNotIn(List<Integer> values) {
            addCriterion("equipment_parent_id not in", values, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdBetween(Integer value1, Integer value2) {
            addCriterion("equipment_parent_id between", value1, value2, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentParentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("equipment_parent_id not between", value1, value2, "equipmentParentId");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryIsNull() {
            addCriterion("equipment_category is null");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryIsNotNull() {
            addCriterion("equipment_category is not null");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryEqualTo(Integer value) {
            addCriterion("equipment_category =", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryNotEqualTo(Integer value) {
            addCriterion("equipment_category <>", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryGreaterThan(Integer value) {
            addCriterion("equipment_category >", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryGreaterThanOrEqualTo(Integer value) {
            addCriterion("equipment_category >=", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryLessThan(Integer value) {
            addCriterion("equipment_category <", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryLessThanOrEqualTo(Integer value) {
            addCriterion("equipment_category <=", value, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryIn(List<Integer> values) {
            addCriterion("equipment_category in", values, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryNotIn(List<Integer> values) {
            addCriterion("equipment_category not in", values, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryBetween(Integer value1, Integer value2) {
            addCriterion("equipment_category between", value1, value2, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andEquipmentCategoryNotBetween(Integer value1, Integer value2) {
            addCriterion("equipment_category not between", value1, value2, "equipmentCategory");
            return (Criteria) this;
        }

        public Criteria andLogoIsNull() {
            addCriterion("logo is null");
            return (Criteria) this;
        }

        public Criteria andLogoIsNotNull() {
            addCriterion("logo is not null");
            return (Criteria) this;
        }

        public Criteria andLogoEqualTo(String value) {
            addCriterion("logo =", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotEqualTo(String value) {
            addCriterion("logo <>", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThan(String value) {
            addCriterion("logo >", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThanOrEqualTo(String value) {
            addCriterion("logo >=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThan(String value) {
            addCriterion("logo <", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThanOrEqualTo(String value) {
            addCriterion("logo <=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLike(String value) {
            addCriterion("logo like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotLike(String value) {
            addCriterion("logo not like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoIn(List<String> values) {
            addCriterion("logo in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotIn(List<String> values) {
            addCriterion("logo not in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoBetween(String value1, String value2) {
            addCriterion("logo between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotBetween(String value1, String value2) {
            addCriterion("logo not between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andIntroduceIsNull() {
            addCriterion("introduce is null");
            return (Criteria) this;
        }

        public Criteria andIntroduceIsNotNull() {
            addCriterion("introduce is not null");
            return (Criteria) this;
        }

        public Criteria andIntroduceEqualTo(String value) {
            addCriterion("introduce =", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotEqualTo(String value) {
            addCriterion("introduce <>", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceGreaterThan(String value) {
            addCriterion("introduce >", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("introduce >=", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLessThan(String value) {
            addCriterion("introduce <", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLessThanOrEqualTo(String value) {
            addCriterion("introduce <=", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceLike(String value) {
            addCriterion("introduce like", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotLike(String value) {
            addCriterion("introduce not like", value, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceIn(List<String> values) {
            addCriterion("introduce in", values, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotIn(List<String> values) {
            addCriterion("introduce not in", values, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceBetween(String value1, String value2) {
            addCriterion("introduce between", value1, value2, "introduce");
            return (Criteria) this;
        }

        public Criteria andIntroduceNotBetween(String value1, String value2) {
            addCriterion("introduce not between", value1, value2, "introduce");
            return (Criteria) this;
        }

        public Criteria andParamsIsNull() {
            addCriterion("params is null");
            return (Criteria) this;
        }

        public Criteria andParamsIsNotNull() {
            addCriterion("params is not null");
            return (Criteria) this;
        }

        public Criteria andParamsEqualTo(String value) {
            addCriterion("params =", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsNotEqualTo(String value) {
            addCriterion("params <>", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsGreaterThan(String value) {
            addCriterion("params >", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsGreaterThanOrEqualTo(String value) {
            addCriterion("params >=", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsLessThan(String value) {
            addCriterion("params <", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsLessThanOrEqualTo(String value) {
            addCriterion("params <=", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsLike(String value) {
            addCriterion("params like", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsNotLike(String value) {
            addCriterion("params not like", value, "params");
            return (Criteria) this;
        }

        public Criteria andParamsIn(List<String> values) {
            addCriterion("params in", values, "params");
            return (Criteria) this;
        }

        public Criteria andParamsNotIn(List<String> values) {
            addCriterion("params not in", values, "params");
            return (Criteria) this;
        }

        public Criteria andParamsBetween(String value1, String value2) {
            addCriterion("params between", value1, value2, "params");
            return (Criteria) this;
        }

        public Criteria andParamsNotBetween(String value1, String value2) {
            addCriterion("params not between", value1, value2, "params");
            return (Criteria) this;
        }

        public Criteria andDatasIsNull() {
            addCriterion("datas is null");
            return (Criteria) this;
        }

        public Criteria andDatasIsNotNull() {
            addCriterion("datas is not null");
            return (Criteria) this;
        }

        public Criteria andDatasEqualTo(String value) {
            addCriterion("datas =", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasNotEqualTo(String value) {
            addCriterion("datas <>", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasGreaterThan(String value) {
            addCriterion("datas >", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasGreaterThanOrEqualTo(String value) {
            addCriterion("datas >=", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasLessThan(String value) {
            addCriterion("datas <", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasLessThanOrEqualTo(String value) {
            addCriterion("datas <=", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasLike(String value) {
            addCriterion("datas like", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasNotLike(String value) {
            addCriterion("datas not like", value, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasIn(List<String> values) {
            addCriterion("datas in", values, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasNotIn(List<String> values) {
            addCriterion("datas not in", values, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasBetween(String value1, String value2) {
            addCriterion("datas between", value1, value2, "datas");
            return (Criteria) this;
        }

        public Criteria andDatasNotBetween(String value1, String value2) {
            addCriterion("datas not between", value1, value2, "datas");
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