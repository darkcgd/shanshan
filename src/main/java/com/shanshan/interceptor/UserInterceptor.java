package com.shanshan.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 我们自己写的拦截器可以不直接实现HandlerInterceptor，而是扩展实现了HandlerInterceptor接口的具体类HandlerInterceptorAdapter，这样的话我们不需要把上面5个方法都实现，而只需要override我们需要的方法就可以了！
 * @author cgd
 *
 */
public class UserInterceptor implements HandlerInterceptor{

	/*@Autowired
	TokenService tokenService;
	@Autowired
	UserService userService;
	@Autowired
	ShopService shopService;*/

	/**
	 * preHandle方法是进行处理器拦截用的，顾名思义，该方法将在Controller处理之前进行调用，SpringMVC中的Interceptor拦截器是链式的，可以同时存在 
	 * 多个Interceptor，然后SpringMVC会根据声明的前后顺序一个接一个的执行，而且所有的Interceptor中的preHandle方法都会在 
	 * Controller方法调用之前调用。SpringMVC的这种Interceptor链式结构也是可以进行中断的，这种中断方式是令preHandle的返 
	 * 回值为false，当preHandle的返回值为false的时候整个请求就结束了。 
	 * or:当返回true时，处理执行链会继续，当返回false时，则不会去执行Controller的方法。（验证用户是否登陆就是使用preHandleAction方法的最好例子）
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		/*String msgFail = "登录信息失效,请重新登录!";
		String requestUrl = request.getServletPath();
		String requestToken = request.getParameter(Constant.TOKEN);
		String idStr=null;
		if(requestUrl.contains("/user/")){
			idStr = request.getParameter(Constant.USER_ID);
		}else if(requestUrl.contains("/shop/")){
			idStr = request.getParameter(Constant.SHOP_ID);
		}

		if(BaseUtil.isEmpty(idStr)){
			if(requestUrl.contains("/user/")){
				msgFail="需要传userId参数";
			}else if(requestUrl.contains("/shop/")){
				msgFail="需要传shopId参数";
			}
		}else{
			Integer id = Integer.parseInt(idStr);
			if(requestUrl.contains("/user/")){
				if(userService.getUserById(id)==null){
					msgFail="该用户不存在";
				}else{
					if(BaseUtil.isNotEmpty(requestToken)){
						TokenBean tokenBean = tokenService.getToken(id,0);
						if(tokenBean!=null){
							String saveToken = tokenBean.getToken();
							if(BaseUtil.isNotEmpty(saveToken)&&requestToken.equals(saveToken)){
								return true;
							}else{
								msgFail="登录信息失效,请重新登录";
							}
						}else{
							msgFail="登录信息失效,请重新登录";
						}
					}else{
						msgFail="需要传token参数";
					}
				}
			}else if(requestUrl.contains("/shop/")){
				if(shopService.getShopById(id)==null){
					msgFail="该商家不存在";
				}else{
					if(BaseUtil.isNotEmpty(requestToken)){
						TokenBean tokenBean = tokenService.getToken(id,1);
						if(tokenBean!=null){
							String saveToken = tokenBean.getToken();
							if(BaseUtil.isNotEmpty(saveToken)&&requestToken.equals(saveToken)){
								return true;
							}else{
								msgFail="登录信息失效,请重新登录";
							}
						}else{
							msgFail="登录信息失效,请重新登录";
						}
					}else{
						msgFail="需要传token参数";
					}
				}
			}
		}
		ObjectMapper mapper = new ObjectMapper(); //转换器
		//测试01：对象--json
		String json=mapper.writeValueAsString(new MsgBean().fail(msgFail)); //将对象转换成json
		System.out.println(json);
		response.setCharacterEncoding("UTF-8"); //设置编码格式
		//response.setContentType("text/html");   //设置数据格式
		response.setContentType("application/json");   //设置数据格式
		PrintWriter writer = response.getWriter();
		writer.print(json);*/
		return false;

	}

	/**
	 * 这个方法只会在当前这个Interceptor的preHandle方法返回值为true的时候才会执行。postHandle是进行处理器拦截用的，它的执行时间是在处理器进行处理之 
	 * 后，也就是在Controller的方法调用之后执行，但是它会在DispatcherServlet进行视图的渲染之前执行，也就是说在这个方法中你可以对ModelAndView进行操 
	 * 作。这个方法的链式结构跟正常访问的方向是相反的，也就是说先声明的Interceptor拦截器该方法反而会后调用，这跟Struts2里面的拦截器的执行过程有点像， 
	 * 只是Struts2里面的intercept方法中要手动的调用ActionInvocation的invoke方法，Struts2中调用ActionInvocation的invoke方法就是调用下一个Interceptor 
	 * 或者是调用action，然后要在Interceptor之前调用的内容都写在调用invoke之前，要在Interceptor之后调用的内容都写在调用invoke方法之后。 
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,ModelAndView modelAndView) throws Exception {

	}

	/**
	 * 该方法也是需要当前对应的Interceptor的preHandle方法的返回值为true时才会执行。该方法将在整个请求完成之后，也就是DispatcherServlet渲染了视图执行， 
	 * 这个方法的主要作用是用于清理资源的，当然这个方法也只能在当前这个Interceptor的preHandle方法的返回值为true时才会执行。 
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

	}
}
