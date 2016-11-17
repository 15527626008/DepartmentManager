import java.math.BigDecimal;
import java.util.List;

import manager.dao.DepartmentDao;
import manager.dao.EmployeeDao;
import manager.entity.Department;
import manager.entity.Employee;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Test {

	ApplicationContext ctx = 
			new ClassPathXmlApplicationContext("application.xml");
	
	EmployeeDao employeeDao = ctx.getBean(EmployeeDao.class);
	DepartmentDao departmentDao = ctx.getBean(DepartmentDao.class);
	@org.junit.Test
	public void addEmployeeTest(){
		
		
		Employee employee = new Employee();
		
		employee.setDepartMentId(1);
		employee.setDepartMentName("计算机");
		employee.setEmail("1234@qq.com");
		employee.setEmployeeName("刘刚");
		employee.setIdCard("12534");
		employee.setPassword("123534");
		employee.setPhone("1213");
		employee.setPosition("经理");
		employee.setSalary(new BigDecimal("5000"));
		for(int i=0;i<50;i++){
			employee.setEmail(i+"123@qq.com");
			employee.setEmployeeName("刘" + i);
			employee.setPosition("职工" + i);
			employeeDao.insertEmployee(employee);
		}
		
	}
	@org.junit.Test
	public void getAllEmployee(){
		
		List<Employee> employees = employeeDao.getAllEmployees();
		for(Employee employee:employees){
			
			System.out.println(employee.getEmail());
		}
	}
	@org.junit.Test
	public void delete(){
		
		employeeDao.deleteEmployee(2);
	}
	@org.junit.Test
	public void addDepartment(){
		Department department = new Department();
		
		department.setDepartmentName("哈哈");
		department.setHigherDepartmentId(1);
		department.setIsendlevel(false);
		department.setLevel(2);
		
		departmentDao.createDepartment(department);
		
	}
	@org.junit.Test
	public void getOnPageData(){
		
		List<Employee> employees = employeeDao.getOnePageDate(2, 10);
		for(Employee employee : employees){
			
			System.out.println(employee.getEmail() + employee.getId());
		}
	}
	@org.junit.Test
	public void getAllDepartMent(){
		List<Department> departments = departmentDao.getAllDepartMent();
		
		for(Department department : departments){
			
			System.out.println(department.getDepartmentName());
		}
	}
	@org.junit.Test
	public void getCount(){
		System.out.println(employeeDao.getEmployeeCount());
	}
}





