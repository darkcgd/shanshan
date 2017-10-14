package com.shanshan.common.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class UserUtils {

	/**
	 * 保存用户id进session中
	 */
	public static void setUserId (HttpServletRequest request, int userId) {
		HttpSession session = request.getSession();
		session.setAttribute("userId", userId);
	}
	
	/**
	 * 保存用户token进session中
	 */
	public static void setUserToken (HttpServletRequest request, String userToken) {
		HttpSession session = request.getSession();
		session.setAttribute("userToken", userToken);
	}
	
	/**
	 * 保存用户id进session中
	 */
	public static String getUserId (HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return userId;
	}
	
	/**
	 * 保存用户token进session中
	 */
	public static String getUserToken (HttpServletRequest request) {
		HttpSession session = request.getSession();
		return (String)session.getAttribute("userToken");
	}
	
}
