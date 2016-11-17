package manager.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Result;
import org.springframework.stereotype.Service;

import manager.dao.EmployeeDao;
import manager.entity.Employee;
import manager.service.EmployeeService;
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {
    @Resource 
    private EmployeeDao employeeDao;
	@Override
	public boolean insertEmployee(Employee employee) {
		
		if(employeeDao.insertEmployee(employee) > 0){
			return true;
		}
		return false;
	}
	@Override
	public List<Employee> getEmployees() {
		// TODO Auto-generated method stub
		return employeeDao.getAllEmployees();
	}
	@Override
	public void deleteEmployee(Integer id) {
		employeeDao.deleteEmployee(id);
	}
	@Override
	public boolean updateEmployee(Employee employee) {
		
		int num = employeeDao.uploadEmployee(employee);
		
		if(num > 0) return true;
		
		return false;
	}
	@Override
	public List<Employee> getOnePageData(Integer page, Integer pageSize) {
		
		
		return employeeDao.getOnePageDate(page, pageSize);
	}
	@Override
	public int getEmployeeCount() {
		
		return employeeDao.getEmployeeCount();
	}
	@Override
	public Employee login(String email, String password) {
		
		
		return employeeDao.login(email, password);
	}

}
