package com.shanshan.service;

import com.shanshan.bean.TagBean;
import com.shanshan.dao.TagBeanMapper;
import com.shanshan.util.BaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagService {
	
	@Autowired
	TagBeanMapper tagBeanMapper;
	/**
	 * 获取所有标签列表数据
	 * @return
	 */
	public List<TagBean> getAllTagList() {
		return tagBeanMapper.selectByExample(null);
	}
	/**
	 * 根据标签id获取标签信息
	 * @return
	 */
	public TagBean getTagById(Integer tagId) {
		if(BaseUtil.isNotEmpty(tagId)){
			return tagBeanMapper.selectByPrimaryKey(tagId);
		}
		return null;
	}
}
