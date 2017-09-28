package com.shanshan.controller;

import com.shanshan.bean.MsgSimpleBean;
import com.shanshan.service.SmsCodeService;
import com.shanshan.util.BaseUtil;
import com.shanshan.util.SmsCodeSendUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by szmg on 17/9/27.
 */
@Controller
public class SmsCodeController {
    @Autowired
   SmsCodeService smsCodeService;
    /**
     * 发送短信验证码
     * @return
     */
    @RequestMapping(value = "/sms", method = { RequestMethod.GET, RequestMethod.POST })
    @ResponseBody
    public Object sendSmsCode(@RequestParam(value = "phone", required=false) String phone){
        if(BaseUtil.isEmpty(phone)){
            return MsgSimpleBean.fail("请输入手机号码");
        }
        if(!BaseUtil.isPhone(phone)){
            return MsgSimpleBean.fail("手机格式不正确");
        }
        try {
            //20170928100802,101,345898
            String responseData = SmsCodeSendUtil.sendSmsCode(phone);
            String[] aryResponseDatas = responseData.split(",");
            if(aryResponseDatas.length==3){
                if("0".equals(aryResponseDatas[1])||"101".equals(aryResponseDatas[1])){
                    if(aryResponseDatas[2]==null&&aryResponseDatas[2].length()<6){
                        return MsgSimpleBean.success("发送验证码失败");
                    }
                    smsCodeService.saveSmsCode(phone,aryResponseDatas[2]);
                    return MsgSimpleBean.success("发送验证码成功");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return MsgSimpleBean.success("发送验证码失败");
    }



}
