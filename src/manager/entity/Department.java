package manager.entity;

/**
 * 部门bean
 * @author join
 *
 */
public class Department {

	/**
	 * 部门ID
	 */
	private Integer id;
	/**
	 * 部门名称
	 */
	private String departmentName;
	/***
	 * 上级部门ID
	 * @return
	 */
	private Integer higherDepartmentId;

	/***
	 * 部门级别
	 * @return
	 */
	private Integer level;
	private Boolean isendlevel;
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Boolean getIsendlevel() {
		return isendlevel;
	}
	public void setIsendlevel(Boolean isendlevel) {
		this.isendlevel = isendlevel;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	public Integer getHigherDepartmentId() {
		return higherDepartmentId;
	}
	public void setHigherDepartmentId(Integer higherDepartmentId) {
		this.higherDepartmentId = higherDepartmentId;
	}
}
