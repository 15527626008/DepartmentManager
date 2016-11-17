package manager.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import manager.annotation.MyBatisRepository;
import manager.entity.Employee;

@MyBatisRepository
public interface EmployeeDao {

	/***
	 * 查询所有的员工
	 * @return
	 */
	@Select("select * from employee")
	public List<Employee> getAllEmployees();
	
	/**
	 * 插入某个员工信息
	 * @param employee
	 * @return
	 */
	@Insert("insert into employee(departMentName,employeeName,password,email,phone,idcard,salary,position) "
			+ "values('${employee.departMentName}','${employee.employeeName}',"
			+ "'${employee.password}','${employee.email}','${employee.phone}','${employee.idCard}','${employee.salary}','${employee.position}')")
	public int insertEmployee(@Param("employee")Employee employee);
	
	/**
	 * 更新员工信息
	 * @param employee
	 * @return
	 */
	@Update("update employee set departMentId=#{employee.departMentId},departMentName=#{employee.departMentName},"
			+ "employeeName=#{employee.employeeName},password=#{employee.password},email={employee.email},phone=#{employee.phone},"
			+ "idcard=#{employee.idCard},salary=#{employee.salary},position=#{employee.position}")
	public int uploadEmployee(@Param("employee")Employee employee);
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	@Delete("delete from employee where id=#{id}")
    public int deleteEmployee(@Param("id")Integer id);
	/**
	 * 数据分页
	 * @param page
	 * @param pageSize
	 * @return
	 */
	@Select("select * from employee where id>('select id from employee order by id ASC limit ${(page-1)*pageSize},1') "
			+ "order by id desc limit ${pageSize*(page-1)},${pageSize}")
	public List<Employee> getOnePageDate(@Param("page")Integer page,@Param("pageSize")Integer pageSize);
	
	@Select("select count(*) from employee where 1=1")
	public int getEmployeeCount();
	
	/**
	 * boss登录
	 */
	@Select("select * from employee where email=#{email} and password=#{password}")
	public Employee login(@Param("email")String email,@Param("password")String password);
}


















