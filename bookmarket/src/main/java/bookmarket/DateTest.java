package bookmarket;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTest {
	public static void main(String[] args) {
		Date today = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm a");
		System.out.println(today.toString());
		System.out.println(dateFormat.format(today));
	}
}
