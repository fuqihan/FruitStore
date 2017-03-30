package cn.edu.neusoft.core.util;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

public class TimeUtil {
	private static final String dateFormat = "yyyy-MM-dd";
	private static final String timeFormat = "yyyy-MM-dd HH:mm:ss";
	public static long getMillis() {
		return System.currentTimeMillis();
	}
	
	public static Date getNow() {
		return new Timestamp(getMillis());
	}
	
	public static Date getTodayStartTime() {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		return cal.getTime();
	}
	
	public static Date getTodayEndTime() {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, 23);
		cal.set(Calendar.MINUTE, 59);
		cal.set(Calendar.SECOND, 59);
		return cal.getTime();
	}

	public static String addDate(int n) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DAY_OF_MONTH, n);
		return DateUtil.getDateText(cal.getTime(),dateFormat);
	}

	public static Date addDate(Date d, int n) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.add(Calendar.DAY_OF_MONTH, n);
		return cal.getTime();
	}
	
	public static long getDiffDays(Date from, Date to) {
		return (to.getTime() - from.getTime()) / (24 * 60 * 60 * 1000);
	}

	public static int getYearNum() {
		return Calendar.getInstance().get(Calendar.YEAR);
	}

	public static String getYear() {
		return "" + getYearNum();
	}

	public static int getMonthNum() {
		return Calendar.getInstance().get(Calendar.MONTH) + 1;
	}

	public static String getMonth() {
		int m = getMonthNum();
		return m < 10 ? "0" + m : "" + m;
	}

	public static int getDayNum(){
		return Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
	}
	
	public static String getDay(){
		return "" + getDayNum();
	}
	public static void main(String[] args) {
		System.out.println(getYear());
		System.out.println(getMonth());
	}
}

