package com.shanshan.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.shanshan.bean.FaultRepairBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.FaultRepairService;

/**
 * 故障报修
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/faultRepair" )
public class FaultRepairController {
	@Autowired
	private FaultRepairService faultRepairService;
	
	/**
	 * 报名
	 * @return
	 */
	@RequestMapping("/saveOrupdate")
	@ResponseBody
	public JsonResult saveOrupdate(@Valid FaultRepairBean entity, BindingResult errors) {
		
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonDataResult<List<String>>(JsonResult.RESULT_F, "500", errors);
		}
		
		return faultRepairService.save(entity);
		
	}
	
	/**
	 * 本人活动报名记录
	 * @return
	 */
	@RequestMapping("/faultRepairList")
	@ResponseBody
	public JsonResult faultRepairList(FaultRepairBean entity, PageRequest page) {
		JsonDataResult<List<FaultRepairBean>> result = new JsonDataResult<>();
		Page<FaultRepairBean> datas = faultRepairService.faultRepairList(entity, page);
		result.setDatas(datas);
		return result;
		
	}
	
}
