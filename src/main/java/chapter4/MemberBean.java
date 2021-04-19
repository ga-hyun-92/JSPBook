package chapter4;

import java.io.Serializable;
//빈즈용 클래스 만들때에는 기본 생성자를 만들어야함. 매개변수가 있는 생성자이면 안됨.
public class MemberBean implements Serializable{
	private static final long serialVersionUID = 6557024430571075302L;
	
	private int id;
	private String name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
