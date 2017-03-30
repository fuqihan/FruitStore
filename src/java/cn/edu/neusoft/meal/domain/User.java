package cn.edu.neusoft.meal.domain;

public class User {
	private int id;
	private String userName, sex, DOB;
	private String createDate;
	private String password, address, card;
	private String telPhone;
	private String name;
	public String getname(){
		return name;
	}
	public void setname(String name){
		this.name=name;
	}



	public String getuserName()
	{
		return userName;
	}

	public void setuserName(String userName)
	{
		this.userName = userName;
	}

	public String getSex()
	{
		return sex;
	}

	public void setSex(String sex)
	{
		this.sex = sex;
	}

	public String getDOB()
	{
		return DOB;
	}

	public void setDOB(String DOB)
	{
		this.DOB = DOB;
	}



	public String getpassword()
	{
		return password;
	}

	public void setpassword(String password)
	{
		this.password = password;
	}



	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getCard()
	{
		return card;
	}

	public void setCard(String card)
	{
		this.card = card;
	}

	public String getTelPhone() {
		return telPhone;
	}

	public void setTelPhone(String telPhone) {
		this.telPhone = telPhone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
}
