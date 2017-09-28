package com.shanshan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FaultRepairBeanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FaultRepairBeanExample() {
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

        public Criteria andRepairIdIsNull() {
            addCriterion("repair_id is null");
            return (Criteria) this;
        }

        public Criteria andRepairIdIsNotNull() {
            addCriterion("repair_id is not null");
            return (Criteria) this;
        }

        public Criteria andRepairIdEqualTo(Integer value) {
            addCriterion("repair_id =", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdNotEqualTo(Integer value) {
            addCriterion("repair_id <>", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdGreaterThan(Integer value) {
            addCriterion("repair_id >", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("repair_id >=", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdLessThan(Integer value) {
            addCriterion("repair_id <", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdLessThanOrEqualTo(Integer value) {
            addCriterion("repair_id <=", value, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdIn(List<Integer> values) {
            addCriterion("repair_id in", values, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdNotIn(List<Integer> values) {
            addCriterion("repair_id not in", values, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdBetween(Integer value1, Integer value2) {
            addCriterion("repair_id between", value1, value2, "repairId");
            return (Criteria) this;
        }

        public Criteria andRepairIdNotBetween(Integer value1, Integer value2) {
            addCriterion("repair_id not between", value1, value2, "repairId");
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

        public Criteria andMachineToolBrandIsNull() {
            addCriterion("machine_tool_brand is null");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandIsNotNull() {
            addCriterion("machine_tool_brand is not null");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandEqualTo(String value) {
            addCriterion("machine_tool_brand =", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandNotEqualTo(String value) {
            addCriterion("machine_tool_brand <>", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandGreaterThan(String value) {
            addCriterion("machine_tool_brand >", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandGreaterThanOrEqualTo(String value) {
            addCriterion("machine_tool_brand >=", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandLessThan(String value) {
            addCriterion("machine_tool_brand <", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandLessThanOrEqualTo(String value) {
            addCriterion("machine_tool_brand <=", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandLike(String value) {
            addCriterion("machine_tool_brand like", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandNotLike(String value) {
            addCriterion("machine_tool_brand not like", value, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandIn(List<String> values) {
            addCriterion("machine_tool_brand in", values, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandNotIn(List<String> values) {
            addCriterion("machine_tool_brand not in", values, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandBetween(String value1, String value2) {
            addCriterion("machine_tool_brand between", value1, value2, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolBrandNotBetween(String value1, String value2) {
            addCriterion("machine_tool_brand not between", value1, value2, "machineToolBrand");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelIsNull() {
            addCriterion("\"Machine tool_model\" is null");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelIsNotNull() {
            addCriterion("\"Machine tool_model\" is not null");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelEqualTo(String value) {
            addCriterion("\"Machine tool_model\" =", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelNotEqualTo(String value) {
            addCriterion("\"Machine tool_model\" <>", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelGreaterThan(String value) {
            addCriterion("\"Machine tool_model\" >", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelGreaterThanOrEqualTo(String value) {
            addCriterion("\"Machine tool_model\" >=", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelLessThan(String value) {
            addCriterion("\"Machine tool_model\" <", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelLessThanOrEqualTo(String value) {
            addCriterion("\"Machine tool_model\" <=", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelLike(String value) {
            addCriterion("\"Machine tool_model\" like", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelNotLike(String value) {
            addCriterion("\"Machine tool_model\" not like", value, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelIn(List<String> values) {
            addCriterion("\"Machine tool_model\" in", values, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelNotIn(List<String> values) {
            addCriterion("\"Machine tool_model\" not in", values, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelBetween(String value1, String value2) {
            addCriterion("\"Machine tool_model\" between", value1, value2, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolModelNotBetween(String value1, String value2) {
            addCriterion("\"Machine tool_model\" not between", value1, value2, "machineToolModel");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnIsNull() {
            addCriterion("\"Machine tool_SN\" is null");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnIsNotNull() {
            addCriterion("\"Machine tool_SN\" is not null");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnEqualTo(String value) {
            addCriterion("\"Machine tool_SN\" =", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnNotEqualTo(String value) {
            addCriterion("\"Machine tool_SN\" <>", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnGreaterThan(String value) {
            addCriterion("\"Machine tool_SN\" >", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnGreaterThanOrEqualTo(String value) {
            addCriterion("\"Machine tool_SN\" >=", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnLessThan(String value) {
            addCriterion("\"Machine tool_SN\" <", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnLessThanOrEqualTo(String value) {
            addCriterion("\"Machine tool_SN\" <=", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnLike(String value) {
            addCriterion("\"Machine tool_SN\" like", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnNotLike(String value) {
            addCriterion("\"Machine tool_SN\" not like", value, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnIn(List<String> values) {
            addCriterion("\"Machine tool_SN\" in", values, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnNotIn(List<String> values) {
            addCriterion("\"Machine tool_SN\" not in", values, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnBetween(String value1, String value2) {
            addCriterion("\"Machine tool_SN\" between", value1, value2, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andMachineToolSnNotBetween(String value1, String value2) {
            addCriterion("\"Machine tool_SN\" not between", value1, value2, "machineToolSn");
            return (Criteria) this;
        }

        public Criteria andContactsNameIsNull() {
            addCriterion("contacts_name is null");
            return (Criteria) this;
        }

        public Criteria andContactsNameIsNotNull() {
            addCriterion("contacts_name is not null");
            return (Criteria) this;
        }

        public Criteria andContactsNameEqualTo(String value) {
            addCriterion("contacts_name =", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameNotEqualTo(String value) {
            addCriterion("contacts_name <>", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameGreaterThan(String value) {
            addCriterion("contacts_name >", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameGreaterThanOrEqualTo(String value) {
            addCriterion("contacts_name >=", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameLessThan(String value) {
            addCriterion("contacts_name <", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameLessThanOrEqualTo(String value) {
            addCriterion("contacts_name <=", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameLike(String value) {
            addCriterion("contacts_name like", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameNotLike(String value) {
            addCriterion("contacts_name not like", value, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameIn(List<String> values) {
            addCriterion("contacts_name in", values, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameNotIn(List<String> values) {
            addCriterion("contacts_name not in", values, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameBetween(String value1, String value2) {
            addCriterion("contacts_name between", value1, value2, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsNameNotBetween(String value1, String value2) {
            addCriterion("contacts_name not between", value1, value2, "contactsName");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneIsNull() {
            addCriterion("contacts_phone is null");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneIsNotNull() {
            addCriterion("contacts_phone is not null");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneEqualTo(String value) {
            addCriterion("contacts_phone =", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneNotEqualTo(String value) {
            addCriterion("contacts_phone <>", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneGreaterThan(String value) {
            addCriterion("contacts_phone >", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("contacts_phone >=", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneLessThan(String value) {
            addCriterion("contacts_phone <", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneLessThanOrEqualTo(String value) {
            addCriterion("contacts_phone <=", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneLike(String value) {
            addCriterion("contacts_phone like", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneNotLike(String value) {
            addCriterion("contacts_phone not like", value, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneIn(List<String> values) {
            addCriterion("contacts_phone in", values, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneNotIn(List<String> values) {
            addCriterion("contacts_phone not in", values, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneBetween(String value1, String value2) {
            addCriterion("contacts_phone between", value1, value2, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andContactsPhoneNotBetween(String value1, String value2) {
            addCriterion("contacts_phone not between", value1, value2, "contactsPhone");
            return (Criteria) this;
        }

        public Criteria andDescribeIsNull() {
            addCriterion("describe is null");
            return (Criteria) this;
        }

        public Criteria andDescribeIsNotNull() {
            addCriterion("describe is not null");
            return (Criteria) this;
        }

        public Criteria andDescribeEqualTo(String value) {
            addCriterion("describe =", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotEqualTo(String value) {
            addCriterion("describe <>", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeGreaterThan(String value) {
            addCriterion("describe >", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("describe >=", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLessThan(String value) {
            addCriterion("describe <", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLessThanOrEqualTo(String value) {
            addCriterion("describe <=", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeLike(String value) {
            addCriterion("describe like", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotLike(String value) {
            addCriterion("describe not like", value, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeIn(List<String> values) {
            addCriterion("describe in", values, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotIn(List<String> values) {
            addCriterion("describe not in", values, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeBetween(String value1, String value2) {
            addCriterion("describe between", value1, value2, "describe");
            return (Criteria) this;
        }

        public Criteria andDescribeNotBetween(String value1, String value2) {
            addCriterion("describe not between", value1, value2, "describe");
            return (Criteria) this;
        }

        public Criteria andPhoto1IsNull() {
            addCriterion("photo1 is null");
            return (Criteria) this;
        }

        public Criteria andPhoto1IsNotNull() {
            addCriterion("photo1 is not null");
            return (Criteria) this;
        }

        public Criteria andPhoto1EqualTo(String value) {
            addCriterion("photo1 =", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1NotEqualTo(String value) {
            addCriterion("photo1 <>", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1GreaterThan(String value) {
            addCriterion("photo1 >", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1GreaterThanOrEqualTo(String value) {
            addCriterion("photo1 >=", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1LessThan(String value) {
            addCriterion("photo1 <", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1LessThanOrEqualTo(String value) {
            addCriterion("photo1 <=", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1Like(String value) {
            addCriterion("photo1 like", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1NotLike(String value) {
            addCriterion("photo1 not like", value, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1In(List<String> values) {
            addCriterion("photo1 in", values, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1NotIn(List<String> values) {
            addCriterion("photo1 not in", values, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1Between(String value1, String value2) {
            addCriterion("photo1 between", value1, value2, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto1NotBetween(String value1, String value2) {
            addCriterion("photo1 not between", value1, value2, "photo1");
            return (Criteria) this;
        }

        public Criteria andPhoto2IsNull() {
            addCriterion("photo2 is null");
            return (Criteria) this;
        }

        public Criteria andPhoto2IsNotNull() {
            addCriterion("photo2 is not null");
            return (Criteria) this;
        }

        public Criteria andPhoto2EqualTo(String value) {
            addCriterion("photo2 =", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2NotEqualTo(String value) {
            addCriterion("photo2 <>", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2GreaterThan(String value) {
            addCriterion("photo2 >", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2GreaterThanOrEqualTo(String value) {
            addCriterion("photo2 >=", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2LessThan(String value) {
            addCriterion("photo2 <", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2LessThanOrEqualTo(String value) {
            addCriterion("photo2 <=", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2Like(String value) {
            addCriterion("photo2 like", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2NotLike(String value) {
            addCriterion("photo2 not like", value, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2In(List<String> values) {
            addCriterion("photo2 in", values, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2NotIn(List<String> values) {
            addCriterion("photo2 not in", values, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2Between(String value1, String value2) {
            addCriterion("photo2 between", value1, value2, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto2NotBetween(String value1, String value2) {
            addCriterion("photo2 not between", value1, value2, "photo2");
            return (Criteria) this;
        }

        public Criteria andPhoto3IsNull() {
            addCriterion("photo3 is null");
            return (Criteria) this;
        }

        public Criteria andPhoto3IsNotNull() {
            addCriterion("photo3 is not null");
            return (Criteria) this;
        }

        public Criteria andPhoto3EqualTo(String value) {
            addCriterion("photo3 =", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3NotEqualTo(String value) {
            addCriterion("photo3 <>", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3GreaterThan(String value) {
            addCriterion("photo3 >", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3GreaterThanOrEqualTo(String value) {
            addCriterion("photo3 >=", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3LessThan(String value) {
            addCriterion("photo3 <", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3LessThanOrEqualTo(String value) {
            addCriterion("photo3 <=", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3Like(String value) {
            addCriterion("photo3 like", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3NotLike(String value) {
            addCriterion("photo3 not like", value, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3In(List<String> values) {
            addCriterion("photo3 in", values, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3NotIn(List<String> values) {
            addCriterion("photo3 not in", values, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3Between(String value1, String value2) {
            addCriterion("photo3 between", value1, value2, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto3NotBetween(String value1, String value2) {
            addCriterion("photo3 not between", value1, value2, "photo3");
            return (Criteria) this;
        }

        public Criteria andPhoto4IsNull() {
            addCriterion("photo4 is null");
            return (Criteria) this;
        }

        public Criteria andPhoto4IsNotNull() {
            addCriterion("photo4 is not null");
            return (Criteria) this;
        }

        public Criteria andPhoto4EqualTo(String value) {
            addCriterion("photo4 =", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4NotEqualTo(String value) {
            addCriterion("photo4 <>", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4GreaterThan(String value) {
            addCriterion("photo4 >", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4GreaterThanOrEqualTo(String value) {
            addCriterion("photo4 >=", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4LessThan(String value) {
            addCriterion("photo4 <", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4LessThanOrEqualTo(String value) {
            addCriterion("photo4 <=", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4Like(String value) {
            addCriterion("photo4 like", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4NotLike(String value) {
            addCriterion("photo4 not like", value, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4In(List<String> values) {
            addCriterion("photo4 in", values, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4NotIn(List<String> values) {
            addCriterion("photo4 not in", values, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4Between(String value1, String value2) {
            addCriterion("photo4 between", value1, value2, "photo4");
            return (Criteria) this;
        }

        public Criteria andPhoto4NotBetween(String value1, String value2) {
            addCriterion("photo4 not between", value1, value2, "photo4");
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