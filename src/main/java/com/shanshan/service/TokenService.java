package com.shanshan.service;

import com.shanshan.bean.TokenBean;
import com.shanshan.bean.TokenBeanExample;
import com.shanshan.dao.TokenBeanMapper;
import com.shanshan.util.AbMd5;
import com.shanshan.util.BaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class TokenService {
	

	@Autowired
	TokenBeanMapper tokenBeanMapper;
	/**
	 * 获取token
	 * @param userId
	 * @param userType 0代表普通用户 1代表商家
	 * @return
	 */
	public TokenBean getToken(Integer userId, Integer userType) {
		TokenBeanExample example=new TokenBeanExample();
		//通过Criteria构造查询条件
		TokenBeanExample.Criteria criteria=example.createCriteria();
		if(BaseUtil.isNotEmpty(userId)){
			criteria.andUserIdEqualTo(userId);
		}
		if(BaseUtil.isNotEmpty(userType)){
			criteria.andUserTypeEqualTo(userType);
		}

		criteria.andExpireTimeGreaterThanOrEqualTo(new Date());//过期时间大于等于现在时间


		List<TokenBean> tokenBeans = tokenBeanMapper.selectByExample(example);
		if(tokenBeans!=null&&tokenBeans.size()>0){
			return tokenBeans.get(0);
		}
		return null;
	}

	/**
	 *
	 * @param userId
	 * @param userType 0代表普通用户 1代表客服 2代表技术专家
	 * @return
	 */
	public String generateToken(Integer userId,Integer userType) {
		TokenBeanExample example=new TokenBeanExample();
		//通过Criteria构造查询条件
		TokenBeanExample.Criteria criteria=example.createCriteria();
		if(BaseUtil.isNotEmpty(userId)){
			criteria.andUserIdEqualTo(userId);
		}
		if(BaseUtil.isNotEmpty(userType)){
			criteria.andUserTypeEqualTo(userType);
		}

		List<TokenBean> tokenBeans = tokenBeanMapper.selectByExample(example);

		String uuid = UUID.randomUUID().toString().replaceAll("-","");
		long nowTime=new Date().getTime();
		String str=userId+uuid+nowTime;
		String md5Str = AbMd5.MD5(str);

		if(tokenBeans!=null&&tokenBeans.size()>0){//说明之前已经存在该token信息,现在需要修改
			TokenBean tokenBean = tokenBeans.get(0);
			Integer saveUserType = tokenBean.getUserType();
			if(BaseUtil.isEmpty(saveUserType)){
				tokenBean.setUserType(userType);
			}

			tokenBean.setToken(md5Str);
			Date date = new Date();
			long time = date.getTime();
			tokenBean.setCreateTime(date);

			time+=1000*60*60*24*7;
			tokenBean.setExpireTime(new Date(time));
			tokenBeanMapper.updateByExample(tokenBean,example);

		}else{//说明之前未存在该token信息,需执行增 操作
			TokenBean tokenBean=new TokenBean();
			tokenBean.setUserId(userId);
			tokenBean.setUserType(userType);
			tokenBean.setToken(md5Str);
			Date date = new Date();
			long time = date.getTime();
			tokenBean.setCreateTime(date);

			time+=1000*60*60*24*7;
			tokenBean.setExpireTime(new Date(time));
			tokenBeanMapper.insert(tokenBean);
		}
		 return md5Str;
	}
}
