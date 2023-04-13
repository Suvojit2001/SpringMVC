package springMVC.model;

// the name of the variable should be same as the name attribute in the form 
// mane form er field name r User class er attribute er nam same hote hobe
public class User {
 private String name;
 private String email;
 private String phone;
 private String address;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public User(String name, String email, String phone, String address) {
	super();
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.address = address;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "User [name=" + name + ", email=" + email + ", phone=" + phone + ", address=" + address + "]";
}
 
}
