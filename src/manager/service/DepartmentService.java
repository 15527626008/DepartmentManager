package manager.service;

import java.util.List;

import manager.entity.Department;

public interface DepartmentService {

	public List<Department> getAllDepartMent();
	
	public Boolean insertDepartMent(Department department);
	
	public Boolean updateDepartMent(Department department);
	
	public Boolean deleteDepartMent(Integer id);
}
