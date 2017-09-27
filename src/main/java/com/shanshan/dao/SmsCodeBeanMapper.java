package com.shanshan.dao;

import com.shanshan.bean.SmsCodeBean;
import com.shanshan.bean.SmsCodeBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SmsCodeBeanMapper {
    long countByExample(SmsCodeBeanExample example);

    int deleteByExample(SmsCodeBeanExample example);

    int deleteByPrimaryKey(Integer smsCodeId);

    int insert(SmsCodeBean record);

    int insertSelective(SmsCodeBean record);

    List<SmsCodeBean> selectByExample(SmsCodeBeanExample example);

    SmsCodeBean selectByPrimaryKey(Integer smsCodeId);

    int updateByExampleSelective(@Param("record") SmsCodeBean record, @Param("example") SmsCodeBeanExample example);

    int updateByExample(@Param("record") SmsCodeBean record, @Param("example") SmsCodeBeanExample example);

    int updateByPrimaryKeySelective(SmsCodeBean record);

    int updateByPrimaryKey(SmsCodeBean record);
}