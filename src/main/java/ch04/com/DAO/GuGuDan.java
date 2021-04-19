package ch04.com.DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GuGuDan implements Serializable{

	private static final long serialVersionUID = -6033985804363095836L;
	
	public GuGuDan() {
		
	}
	
	//구구단을 계산하는 메서드
	public ArrayList<Integer> process(int gugudan) {
		List<Integer> result=new ArrayList<Integer>();
		
		for (int i = 1; i <=9; i++) {
			result.add(gugudan*i);
		}
		
		return (ArrayList<Integer>)result;
	}
	

}
