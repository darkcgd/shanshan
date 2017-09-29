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
	 * @param platformType 平台类型 0代表手机端 1代表PC端(目前只有客服能用PC端)
	 * @return
	 */
	public TokenBean getToken(Integer userId, Integer platformType) {
		TokenBeanExample example=new TokenBeanExample();
		//通过Criteria构造查询条件
		TokenBeanExample.Criteria criteria=example.createCriteria();
		if(BaseUtil.isNotEmpty(userId)){
			criteria.andUserIdEqualTo(userId);
		}
		if(BaseUtil.isNotEmpty(platformType)){
			criteria.andPlatformTypeEqualTo(platformType);
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
	 * @param platformType 平台类型 0代表手机端 1代表PC端(目前只有客服能用PC端)
	 * @return
	 */
	public String generateToken(Integer userId,Integer platformType) {
		TokenBeanExample example=new TokenBeanExample();
		//通过Criteria构造查询条件
		TokenBeanExample.Criteria criteria=example.createCriteria();
		if(BaseUtil.isNotEmpty(userId)){
			criteria.andUserIdEqualTo(userId);
		}
		if(BaseUtil.isNotEmpty(platformType)){
			criteria.andPlatformTypeEqualTo(platformType);
		}

		List<TokenBean> tokenBeans = tokenBeanMapper.selectByExample(example);

		String uuid = UUID.randomUUID().toString().replaceAll("-","");
		long nowTime=new Date().getTime();
		String str=userId+uuid+nowTime;
		String md5Str = AbMd5.MD5(str);

		if(tokenBeans!=null&&tokenBeans.size()>0){//说明之前已经存在该token信息,现在需要修改
			TokenBean tokenBean = tokenBeans.get(0);
			Integer savePlatformType = tokenBean.getPlatformType();
			if(BaseUtil.isEmpty(savePlatformType)){
				tokenBean.setPlatformType(platformType);
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
			tokenBean.setPlatformType(platformType);
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
