package manager.service;

import java.util.List;

import manager.entity.Employee;

public interface EmployeeService {

	public boolean insertEmployee(Employee employee);
	public List<Employee> getEmployees();
	public void deleteEmployee(Integer id);
	public boolean updateEmployee(Employee employee);
	public List<Employee> getOnePageData(Integer page ,Integer pageSize);
	public int getEmployeeCount();
	public Employee login(String email ,String password);
}
