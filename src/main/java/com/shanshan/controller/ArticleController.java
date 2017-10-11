package com.shanshan.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.github.pagehelper.Page;
import com.shanshan.bean.ArticleBean;
import com.shanshan.common.model.ArticleJsonDateResult;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.ArticleService;

@Controller
@RequestMapping( "/article" )
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	/**
	 * 文章列表
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
	 * 文章详情
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
    public ArticleJsonDateResult upload(HttpServletRequest request, HttpServletResponse response) {  
    	ArticleJsonDateResult result = new ArticleJsonDateResult();
    	
    	
        try {  
            String savePath = "D://pictuce/";  
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
                        String fileName = file.getOriginalFilename();  
                        File localFile = new File(savePath + fileName + uuid);  
                        // 写文件到本地  
                        file.transferTo(localFile);  
                        data.add(localFile.getAbsolutePath());
                    }  
                }  
                result.setErrno("0");
                return result;
            }  
              
        } catch (IOException e) {  
            e.printStackTrace();  
        }
		return new ArticleJsonDateResult("1");  
    }  
}  
