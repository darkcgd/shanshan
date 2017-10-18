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
import com.shanshan.bean.EquipmentInfoBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.service.EquipmentInfoService;
import com.shanshan.util.Constant;


/**
 * 设备信息
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/equipmentInfo" )
public class EquipmentInfoController extends BaseController {

	@Autowired
	private EquipmentInfoService equipmentInfoService;
	
	/**
	 * 设备列表
	 * @return
	 */
	@RequestMapping("/equipmentInfoList")
	@ResponseBody
	public Object equipmentInfoList(EquipmentInfoBean entity,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize) {
		PageHelper.startPage(pagerNumber, pagerSize);
		List<EquipmentInfoBean> articleList = equipmentInfoService.equipmentInfoList(entity);

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
	@RequestMapping("/equipmentInfoDetail")
	@ResponseBody
	public JsonResult equipmentInfoDetail(EquipmentInfoBean entity) {
		JsonDataResult<EquipmentInfoBean> result = new JsonDataResult<>();
		
		if (null == entity.getEquipmentId() || 0 == entity.getEquipmentId()) {
			return new JsonResult("500", "活动id不能为空!");
		}
		
		EquipmentInfoBean data = equipmentInfoService.equipmentInfoDetail(entity);
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
	public JsonResult saveOpUpdate(@Valid @RequestBody EquipmentInfoBean entity, BindingResult errors) {
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonResult("500", "参数校验失败");
		}

		return equipmentInfoService.saveOrUpdate(entity);
	}
	
}
