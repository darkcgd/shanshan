package com.shanshan.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shanshan.base.BaseController;
import com.shanshan.bean.EquipmentTypeBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.service.EquipmentTypeService;
import com.shanshan.util.Constant;

/**
 * 设备信息
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/equipmentType" )
public class EquipmentTypeController extends BaseController {

	@Autowired
	private EquipmentTypeService equipmentTypeService;
	
	/**
	 * 设备列表
	 * @return
	 */
	@RequestMapping("/equipmentTypeList")
	@ResponseBody
	public Object equipmentTypeList(EquipmentTypeBean entity,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize) {
		PageHelper.startPage(pagerNumber, pagerSize);
		List<EquipmentTypeBean> articleList = equipmentTypeService.equipmentTypeList(entity);

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();

		handlerPageInfoAdmin(data, new PageInfo(articleList, pagerSize));

		data.put("list", articleList);
		return msg;
	}
	
	/**
	 * 设备信息详情
	 * @return
	 */
	@RequestMapping("/equipmentTypeDetail")
	@ResponseBody
	public JsonResult equipmentTypeDetail(EquipmentTypeBean entity) {
		JsonDataResult<EquipmentTypeBean> result = new JsonDataResult<>();
		
		if (null == entity.getEquipmentTypeId() || 0 == entity.getEquipmentTypeId()) {
			return new JsonResult("500", "活动id不能为空!");
		}
		
		EquipmentTypeBean data = equipmentTypeService.equipmentTypeDetail(entity);
		result.setData(data);
		return result;
	}
	
	/**
	 * 保存设备信息;如果是删除就传id和states=13
	 * 
	 * @return
	 */
	@RequestMapping("/saveOpUpdate")
	@ResponseBody
	public JsonResult saveOpUpdate(@Valid @RequestBody EquipmentTypeBean entity, BindingResult errors) {
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonResult("500", "参数校验失败");
		}

		return equipmentTypeService.saveOrUpdate(entity);
	}
	
}
