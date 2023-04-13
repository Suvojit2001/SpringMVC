package springMVC.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Student {

	private String name;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date date;
	private String select;
	//make default constructor of address and student else an error will occur
	// see the name attribute in jsp file
	//Automatic binding
	private Address address;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Student(String name, Date date, String select, Address address) {
		super();
		this.name = name;
		this.date = date;
		this.select = select;
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", date=" + date + ", select=" + select + ", address=" + address + "]";
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
