package manager.entity;

public class Page {

	private static final int  pageSize = 20;
	
	private int total;
	private int count;
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCount() {
		return count;
	}

	public void setCount() {
		this.count = total%pageSize == 0 ? total/pageSize : total/pageSize + 1;
	}

	
	
	
}
