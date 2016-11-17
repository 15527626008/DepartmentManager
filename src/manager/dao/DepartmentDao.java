package manager.dao;

import java.util.List;

import manager.annotation.MyBatisRepository;
import manager.entity.Department;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
@MyBatisRepository
public interface DepartmentDao {

	/**
	 * 获取所有的部门信息
	 * @return
	 */
	@Select("select * from department")
	public List<Department> getAllDepartMent();
	/**
	 * 更新部门信息
	 * @param department
	 * @return
	 */
	@Update("update department set departmentName=#{department.departmentName},higherDepartmentId=#{department.higherDepartmentId},"
			+ "level=#{department.level},isendlevel=#{department.isendlevel}")
	public int updateDepartment(@Param("department")Department department);
	/**
	 * 删除部门信息
	 * @param id
	 * @return
	 */
	@Delete("delete from department where id=#{id}")
	public int delateDapartment(@Param("id")Integer id);
	
	@Insert("insert into department(departmentName,higherDepartmentId,level,isendlevel) "
			+ "VALUES(#{department.departmentName},#{department.higherDepartmentId},#{department.level},#{department.isendlevel})")
	public int createDepartment(@Param("department")Department department);
	
	
}
