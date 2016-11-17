package manager.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import manager.dao.DepartmentDao;
import manager.entity.Department;
import manager.service.DepartmentService;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

	@Resource
	private DepartmentDao departmentDao;
	@Override
	public List<Department> getAllDepartMent() {
		// TODO Auto-generated method stub
		return departmentDao.getAllDepartMent();
	}

	@Override
	public Boolean insertDepartMent(Department department) {
		
		if(departmentDao.createDepartment(department) > 0)
			
			return true;
		
		return false;
	}

	@Override
	public Boolean updateDepartMent(Department department) {
		
		if(departmentDao.updateDepartment(department) > 0){
			
			return true;
		}
		
		return false;
	}

	@Override
	public Boolean deleteDepartMent(Integer id) {
		
		if(departmentDao.delateDapartment(id) > 0)
			return true;
		return false;
	}

}
