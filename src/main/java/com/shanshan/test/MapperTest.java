package com.shanshan.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 测试dao层的工作
 * @author lfy
 *推荐Spring的项目就可以使用Spring的单元测试，可以自动注入我们�?要的组件
 *1、导入SpringTest模块
 *2、@ContextConfiguration指定Spring配置文件的位�?
 *3、直接autowired要使用的组件即可
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {
	
	/*@Autowired
	DepartmentMapper departmentMapper;
	
	@Autowired
	EmployeeMapper employeeMapper;

	@Autowired
	UserMapper userMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	*//**
	 * 测试DepartmentMapper
	 *//*
	@Test
	public void testCRUD(){
	*//*	//1、创建SpringIOC容器
		ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
		//2、从容器中获取mapper
		DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);*//*
		//System.out.println(departmentMapper);
		
		//1、插入几个部�?
		//departmentMapper.insertSelective(new Department(null, "开发部"));
		//departmentMapper.insertSelective(new Department(null, "测试部"));
		
		//2、生成员工数据，测试员工插入
		//employeeMapper.insertSelective(new Employee(null, "Jerry", "M", "Jerry@cgd.com", 1));
		
		//3、批量插入多个员工；批量，使用可以执行批量操作的sqlSession�?
		
//		for(){
//			employeeMapper.insertSelective(new Employee(null, , "M", "Jerry@cgd.com", 1));
//		}
		*//*EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
		for(int i = 0;i<1000;i++){
			String uid = UUID.randomUUID().toString().substring(0,5)+i;
			mapper.insertSelective(new Employee(null,uid, "M", uid+"@cgd.com", 1));
		}
		System.out.println("批量完成");*//*

		*//*CollectBeanMapper mapper = sqlSession.getMapper(CollectBeanMapper.class);
		for(int i = 0;i<100000;i++){
			CollectBean collectBean = new CollectBean();
			collectBean.setTargetId(1);
			collectBean.setTargetType(1);
			collectBean.setUserId(43);
			collectBean.setIsCancel(0);
			collectBean.setCreateTime(new Date());
			collectBean.setUpdateTime(new Date());
			mapper.insertSelective(collectBean);
		}
		System.out.println("批量完成");*//*
		*//*PraiseBeanMapper mapper = sqlSession.getMapper(PraiseBeanMapper.class);
		for(int i = 0;i<100000;i++){
			PraiseBean praiseBean = new PraiseBean();
			praiseBean.setTargetId(1);
			praiseBean.setTargetType(1);
			praiseBean.setUserId(43);
			praiseBean.setIsCancel(0);
			praiseBean.setCreateTime(new Date());
			praiseBean.setUpdateTime(new Date());
			mapper.insertSelective(praiseBean);
		}
		System.out.println("批量完成");*//*
		ProductBeanMapper mapper = sqlSession.getMapper(ProductBeanMapper.class);
		for(int i = 0;i<100;i++){
			ProductBean productBean = new ProductBean();
			productBean.setProductName("夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦");
			productBean.setProductCode((i+10)+"");
			productBean.setLogo("https://img.alicdn.com/imgextra/i1/50675334/TB2qBwtuctnpuFjSZFKXXalFFXa_!!50675334.jpg");
			productBean.setImage1("https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg");
			productBean.setImage2("https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg");
			productBean.setImage3("https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg");
			productBean.setImage4("https://img.alicdn.com/imgextra/i4/50675334/TB2_BPqaIPRfKJjSZFOXXbKEVXa_!!50675334.jpg");
			productBean.setTitle("夏天家2017夏季小黑裙新款女韩版系带收腰a字短裙v领连衣裙子显瘦");
			productBean.setBuyPrice(new BigDecimal("90.02"));
			productBean.setOriginalPrice(new BigDecimal("150.32"));
			productBean.setNowPrice(new BigDecimal("252.67"));
			productBean.setDiscount(65);
			productBean.setProductTagId(1);
			productBean.setCategoryId(1);
			productBean.setGraphicDetail("作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！");
			productBean.setIsSale(0);
			productBean.setShopId(1);
			productBean.setSummary("作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！");
			productBean.setRemark("作为一款裙装，小黑裙在服装界的重要性相当于法国娇兰在香水界的地位， 她经历了数十年，它成功出现在了各个女性的衣橱里。 无论是上班还是度假、工作还是休闲， 优雅百搭的黑裙子总是能够演绎出恰到好处的风格。 更重要的是，黑色百搭又显身材！");
			productBean.setReadCount(0);
			productBean.setCreateTime(new Date());
			productBean.setUpdateTime(new Date());
			mapper.insertSelective(productBean);
		}
		System.out.println("批量完成");
	}
	
	//自定义条件来查询  
    @Test  
    public void testSelectByExample() {  
        UserExample userExample=new UserExample();  
        //通过Criteria构造查询条件  
        UserExample.Criteria criteria=userExample.createCriteria();  
        criteria.andUserNameEqualTo("dark_cgd_1").andPwdEqualTo("123456");
        //可能返回多条记录  
        List<User> list=userMapper.selectByExample(userExample);  
        for (int i = 0; i < list.size(); i++) {  
        	User it=list.get(i);  
            System.out.println(it.getUserId()+":"+it.getUserName());
        }  
        System.out.println("查询结束");
    }  */


}
