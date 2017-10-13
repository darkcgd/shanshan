package com.shanshan.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shanshan.base.BaseController;
import com.shanshan.bean.ArticleBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.common.model.ArticleJsonDateResult;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.ArticleService;
import com.shanshan.util.Constant;

@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController {

	@Autowired
	private ArticleService articleService;

	/**
	 * 文章列表
	 * 
	 * @return
	 */
	@RequestMapping("/articleList")
	@ResponseBody
	public JsonResult articleList(ArticleBean entity, PageRequest page) {
		JsonDataResult<List<ArticleBean>> result = new JsonDataResult<>();
		Page<ArticleBean> datas = articleService.articleList(entity, page);
		result.setDatas(datas);
		result.setRecordCount(datas.size());
		return result;
	}

	/**
	 * PC管理后台 获取文章列表
	 */
	@ResponseBody
	@RequestMapping(value = "/getArticleList", method = RequestMethod.GET)
	public Object getArticleList(ArticleBean articleBean,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize) {
		PageHelper.startPage(pagerNumber, pagerSize);
		List<ArticleBean> articleBeanList = articleService.getArticleList(articleBean);

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();

		handlerPageInfoAdmin(data, new PageInfo(articleBeanList, pagerSize));

		data.put("list", articleBeanList);
		return msg;
	}

	/**
	 * 文章详情
	 * 
	 * @return
	 */
	@RequestMapping("/articleDetail")
	@ResponseBody
	public JsonResult articleDetail(ArticleBean entity) {
		JsonDataResult<ArticleBean> result = new JsonDataResult<>();
		if (null == entity.getArticleId() || 0 == entity.getArticleId()) {
			return new JsonResult(1, "ID_IS_NULL", "文章id不能为空!");
		}
		ArticleBean data = articleService.articleDetail(entity);
		result.setDatas(data);
		result.setRecordCount(1);
		return result;
	}

	/**
	 * 保存文章;如果是删除就传id和states=13
	 * 
	 * @return
	 */
	@RequestMapping("/saveOpUpdate")
	@ResponseBody
	public JsonResult saveOpUpdate(@Valid @RequestBody ArticleBean entity, BindingResult errors) {
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonDataResult<List<String>>(JsonResult.RESULT_F, "500", errors);
		}

		return articleService.saveOrUpdate(entity);
	}

	@RequestMapping("/upload")
	@ResponseBody
	public ArticleJsonDateResult upload(HttpServletRequest request) {
		ArticleJsonDateResult result = new ArticleJsonDateResult();

		
		// 获取域名
		StringBuffer url = request.getRequestURL();  
		String tempContextUrl = url.delete(url.length() - request.getRequestURI().length(), url.length()).append(request.getServletContext().getContextPath()).append("/").toString();  
		String downloadUrl = tempContextUrl + "article/download?fileName=";
		try {
			String savePath = "C://pictuce/";
			File dirPath = new File(savePath);
			if (!dirPath.exists()) {
				dirPath.mkdirs();
			}
			// 解析器解析request的上下文
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());
			// 先判断request中是否包涵multipart类型的数据，
			if (multipartResolver.isMultipart(request)) {
				// 再将request中的数据转化成multipart类型的数据
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
				@SuppressWarnings("rawtypes")
				Iterator iter = multiRequest.getFileNames();

				List<String> data = new ArrayList<>();
				while (iter.hasNext()) {
					MultipartFile file = multiRequest.getFile((String) iter.next());
					if (file != null) {
						String uuid = UUID.randomUUID().toString().toUpperCase().replaceAll("-", "");
						String fileName = uuid + file.getOriginalFilename();
						File localFile = new File(savePath + fileName);
						// 写文件到本地
						file.transferTo(localFile);
						data.add(downloadUrl + fileName);
					}
				}
				result.setData(data);
				result.setErrno("0");
				return result;
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ArticleJsonDateResult("1");
	}

	@RequestMapping("/download")
	@ResponseBody
	public String downloadFile(@RequestParam("fileName") String fileName, HttpServletRequest request,
			HttpServletResponse response) {
		if (fileName != null) {
			String realPath = "C://pictuce/";
			File file = new File(realPath, fileName);
			if (file.exists()) {
				// response.setContentType("application/force-download");// 设置强制下载不打开
				response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);// 设置文件名
				byte[] buffer = new byte[1024];
				FileInputStream fis = null;
				BufferedInputStream bis = null;
				try {
					fis = new FileInputStream(file);
					bis = new BufferedInputStream(fis);
					OutputStream os = response.getOutputStream();
					int i = bis.read(buffer);
					while (i != -1) {
						os.write(buffer, 0, i);
						i = bis.read(buffer);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (bis != null) {
						try {
							bis.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
					if (fis != null) {
						try {
							fis.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
		}
		return null;
	}
}
