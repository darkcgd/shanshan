package com.shanshan.service;


import com.shanshan.bean.SmsCodeBean;
import com.shanshan.bean.SmsCodeBeanExample;
import com.shanshan.dao.SmsCodeBeanMapper;
import com.shanshan.dao.UserBeanMapper;
import com.shanshan.util.MessageUtil;
import com.shanshan.util.TextMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by szmg on 17/9/27.
 */
@Service
public class SmsCodeService {
    @Autowired
    SmsCodeBeanMapper smsCodeBeanMapper;

    public void saveSmsCode(String phone,String smsCode) {
        Date date = new Date();
        long time = date.getTime();
        time+=10*60*1000;
        SmsCodeBean smsCodeBean = selectSmsByPhone(phone);
        if(smsCodeBean!=null){
            smsCodeBean.setPhone(phone);
            smsCodeBean.setSmsCode(smsCode);

            smsCodeBean.setUpdateTime(date);
            smsCodeBean.setExpireTime(new Date(time));
            smsCodeBeanMapper.updateByPrimaryKeySelective(smsCodeBean);
        }else{
            SmsCodeBean SmsCodeBean=new SmsCodeBean();
            SmsCodeBean.setPhone(phone);
            SmsCodeBean.setSmsCode(smsCode);

            SmsCodeBean.setCreateTime(date);
            SmsCodeBean.setUpdateTime(date);
            SmsCodeBean.setExpireTime(new Date(time));
            smsCodeBeanMapper.insert(SmsCodeBean);
        }


    }

    /**
     * 查询是否已经存在过该手机的验证码
     * @param phone
     * @return
     */
    public SmsCodeBean selectSmsByPhone(String phone){
        SmsCodeBeanExample example=new SmsCodeBeanExample();
        //通过Criteria构造查询条件
        SmsCodeBeanExample.Criteria criteria=example.createCriteria();
        criteria.andPhoneEqualTo(phone);

        List<SmsCodeBean> smsCodeBeans = smsCodeBeanMapper.selectByExample(example);
        if(smsCodeBeans!=null&&smsCodeBeans.size()>0){
            return smsCodeBeans.get(0);
        }
        return null;
    }

    /**
     * 检查验证码的有效性
     * @param phone
     * @return
     */
    public SmsCodeBean checkSmsByPhone(String phone){
        SmsCodeBeanExample example=new SmsCodeBeanExample();
        //通过Criteria构造查询条件
        SmsCodeBeanExample.Criteria criteria=example.createCriteria();
        criteria.andPhoneEqualTo(phone);
        criteria.andExpireTimeGreaterThan(new Date());

        List<SmsCodeBean> smsCodeBeans = smsCodeBeanMapper.selectByExample(example);
        if(smsCodeBeans!=null&&smsCodeBeans.size()>0){
            return smsCodeBeans.get(0);
        }
        return null;
    }

    /**
     * 操作成功后删除验证码
     * @param phone
     */
    public void deleteSmsCode(String phone){
        SmsCodeBeanExample example=new SmsCodeBeanExample();
        //通过Criteria构造查询条件
        SmsCodeBeanExample.Criteria criteria=example.createCriteria();
        criteria.andPhoneEqualTo(phone);
        smsCodeBeanMapper.deleteByExample(example);
    }

}
