package com.shanshan.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.FaultRepairBean;
import com.shanshan.bean.FaultRepairBeanExample;
import com.shanshan.bean.FaultRepairBeanExample.Criteria;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.dao.FaultRepairBeanMapper;

@Service
public class FaultRepairService {

	@Autowired
	private FaultRepairBeanMapper faultRepairBeanMapper;

	public JsonResult saveOrupdate(FaultRepairBean entity, String userId) {
		Date date = new Date(System.currentTimeMillis());
		
		if (entity != null) {
			FaultRepairBean enrollBean = faultRepairBeanMapper.selectByPrimaryKey(entity.getRepairId());
			if (enrollBean != null) {
				// 更新
				BeanUtils.copyProperties(entity, enrollBean);
				entity.setUpdateTime(date);
				faultRepairBeanMapper.updateByPrimaryKeySelective(enrollBean);
			}else {
				// 保存
				entity.setCreateTime(date);
				entity.setUpdateTime(date);
				entity.setUserId(Integer.parseInt(userId));
				faultRepairBeanMapper.insertSelective(entity);
			}
		}

		JsonResult result = new JsonResult("200", "操作成功");
		return result;
	}

	public List<FaultRepairBean> faultRepairList(FaultRepairBean entity, String userId) {
		FaultRepairBeanExample example = new FaultRepairBeanExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(Integer.parseInt(userId));


		example.setOrderByClause("create_time");
		return faultRepairBeanMapper.selectByExample(example);
	}

}
