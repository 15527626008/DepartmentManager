package manager.entity;

import java.math.BigDecimal;

import com.sun.org.apache.xerces.internal.impl.dv.xs.DecimalDV;

public class Employee {

	private Integer id;
	/**
	 * 部门ID
	 */
	private Integer departMentId;
	/**
	 * 部门名称
	 */
	private String  departMentName;
	/**
	 * 员工姓名
	 */
	private String employeeName;
	
	private String password;
	/**
	 * 邮箱
	 */
	private String email;
	/**
	 * 手机号
	 */
	private String phone;
	/**
	 * 身份证号码
	 */
	private String idCard;
	/**
	 * 薪资
	 */
	private BigDecimal salary;
	/**
	 * 职位
	 */
	private String position;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDepartMentId() {
		return departMentId;
	}
	public void setDepartMentId(Integer departMentId) {
		this.departMentId = departMentId;
	}
	public String getDepartMentName() {
		return departMentName;
	}
	public void setDepartMentName(String departMentName) {
		this.departMentName = departMentName;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public BigDecimal getSalary() {
		return salary;
	}
	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}
}
