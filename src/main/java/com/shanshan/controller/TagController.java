package com.shanshan.controller;

import com.shanshan.base.BaseController;
import com.shanshan.bean.MsgBean;
import com.shanshan.bean.TagBean;
import com.shanshan.service.TagService;
import com.shanshan.util.AbDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class TagController extends BaseController{
	@Autowired
	TagService tagService;

	@ResponseBody
	@RequestMapping(value="/getAllTagList",method=RequestMethod.GET)
	public MsgBean getAllTagList(){
		List<TagBean> datas = tagService.getAllTagList();
		List<Map<String,Object>> results=new ArrayList<>();
		for (TagBean tagBean:datas) {
			Map<String,Object> map = new HashMap<>();
			map.put("tagId",tagBean.getId());
			map.put("tagname",tagBean.getName());
			handlerDateToStr(map,"createTime",tagBean.getCreateTime(),AbDateUtil.dateFormatYMDHMS);
			handlerDateToStr(map,"updateTime",tagBean.getUpdateTime(),AbDateUtil.dateFormatYMDHMS);
			results.add(map);
		}

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();
		data.put("list", results);
		return msg;
	}
}
