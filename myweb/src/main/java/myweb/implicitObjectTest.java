package myweb;

import javax.servlet.http.HttpServletRequest;

public class implicitObjectTest {
	public static void main(String[] args) {
		HttpServletRequest req = null;  // => 초기화 해준 것 / HttpServletRequest = 인터페이스 선언 -> 추상 메서드
		// 선언과 정의 구분 필요
		req.getParameter("name"); //getParameter = HttpServletRequest 인터페이스에 선언된 추상 메서드
	}

}
