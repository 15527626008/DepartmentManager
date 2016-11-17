package manager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import manager.dao.DepartmentDao;
import manager.entity.Department;
import manager.entity.Employee;
import manager.service.DepartmentService;
import manager.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DepartmentService departmentService;
	@RequestMapping("/home")
	public String homePage(){
		
		return "home";
	}
	@RequestMapping("/login")
	public String loginPage(){
		
		return "login";
	}
	@RequestMapping("/login1")
	public String login1Page(@RequestParam("email")String email,@RequestParam("password")String password,HttpServletRequest request){
		
		Employee employee = employeeService.login(email, password);
		
		if(employee != null){
			
			request.getSession().setAttribute("employee", employee);
			
			return "redirect:/home.html";
		}
		
		return "redirect:/login.html";
	}
	
	@RequestMapping("/employee.**")
	public ModelAndView employeePage(@RequestParam(value="page",required=false,defaultValue="1") Integer page){
		
		
		List<Employee> employees = employeeService.getOnePageData(page, 20);
		int count  = employeeService.getEmployeeCount();
		count = count%10 != 0 ? count/20 +1: count/20;
		ModelAndView modelAndView = new ModelAndView();
		List<Department> departments = departmentService.getAllDepartMent();
		
		modelAndView.addObject("employees", employees);
		modelAndView.addObject("count", count);
		modelAndView.addObject("departments", departments);
		modelAndView.addObject("page", page);
		modelAndView.setViewName("employee");
		
		return modelAndView;
	}
	@RequestMapping("/department.**")
	public ModelAndView departmentPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<Department> departments = departmentService.getAllDepartMent();
		
		modelAndView.addObject("departments", departments);
		
		modelAndView.setViewName("department");
		
		return modelAndView;
	}
	@RequestMapping("/addemployee")
	public ModelAndView addEmployee(@ModelAttribute Employee employee ){
		
		List<Department> departments = departmentService.getAllDepartMent();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("departments", departments);
		if(employee == null || employee.getDepartMentName() == null){
			mav.setViewName("addemployee");
		}else{
			employeeService.insertEmployee(employee);
			mav.setViewName("redirect:/employee.html");
		}
		return mav;
	}
	@RequestMapping("/adddepartment")
	public ModelAndView addDepartment(@ModelAttribute Department department){
		ModelAndView mav = new ModelAndView();
		
		List<Department> departments = departmentService.getAllDepartMent();
		mav.addObject("departments", departments);
		
		if(department != null && department.getHigherDepartmentId() != null){
			if(department.getHigherDepartmentId() == 1){
				
				department.setLevel(1);
			}
			departmentService.insertDepartMent(department);
			mav.setViewName("redirect:/department.html");
		}else{
			mav.setViewName("adddepartment");
		}
			
		return mav;
	}
	
}
