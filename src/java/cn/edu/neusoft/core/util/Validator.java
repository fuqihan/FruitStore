package cn.edu.neusoft.core.util;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

public class Validator {
	private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
			"yyyy-mm-dd");
	private Map<String, String> errors = new HashMap<String, String>();
	private Map<String, String> parameters;

	public Validator(Map<String, String> parameters) {
		this.parameters = parameters;
	}

	public boolean hasErrors() {
		return errors.size() > 0;
	}

	public boolean checkRequiredError(String fieldName) {
		String value = parameters.get(fieldName);
		if (isEmpty(value)) {
			errors.put(fieldName, "不能为空");
			return true;
		}
		return false;
	}

	public boolean checkRequiredError(String[] fieldNames) {
		boolean hasError = false;
		for (String fieldName : fieldNames) {
			if (checkRequiredError(fieldName))
				hasError = true;
		}
		return hasError;
	}

	public static boolean isEmpty(String str) {
		return (str == null || "".equals(str.trim()));
	}

	public void addError(String fieldName, String errorMessage) {
		errors.put(fieldName, errorMessage);
	}

	public boolean checkDateFormatError(String fieldName, boolean optional) {
		boolean rtn = false;
		String value = parameters.get(fieldName);
		if (!isEmpty(value)) {
			try {
				simpleDateFormat.parse(value.trim());
			} catch (Exception e) {
				addError(fieldName, "输入日期格式错误");
				rtn = true;
			}
		} else {
			if (!optional) {
				addEmptyError(fieldName);
				rtn = true;
			}
		}
		return rtn;
	}

	public boolean checkFloatFormatError(String fieldName, boolean optional) {
		boolean rtn = false;
		String value = parameters.get(fieldName);
		if (!isEmpty(value)) {
			try {
				Float.parseFloat(value.trim());
			} catch (Exception e) {
				addError(fieldName, "输入金额格式错误");
				rtn = true;
			}
		} else {
			if (!optional) {
				addEmptyError(fieldName);
				rtn = true;
			}
		}
		return rtn;
	}

	public void addEmptyError(String fieldName) {
		errors.put(fieldName, "不能为空");
	}

	public static Float convertToFloat(String fieldValue) {
		Float rtn = null;
		if (!isEmpty(fieldValue)) {
			try {
				rtn = Float.parseFloat(fieldValue.trim());
			} catch (Exception e) {
			}
		}
		return rtn;
	}

	public static Date convertToDate(String fieldValue) {
		Date rtn = null;
		if (!isEmpty(fieldValue)) {
			try {
				rtn = simpleDateFormat.parse(fieldValue.trim());
			} catch (Exception e) {
			}
		}
		return rtn;
	}

	public static Long convertToLong(String fieldValue) {
		Long rtn = null;
		if (!isEmpty(fieldValue)) {
			try {
				rtn = Long.parseLong(fieldValue.trim());
			} catch (Exception e) {
			}
		}
		return rtn;
	}

	public Map<String, String> getErrors() {
		return errors;
	}

	public static String dateToString(Date value) {
		if (value == null)
			return "";
		return simpleDateFormat.format(value);
	}

	public static java.sql.Date toSqlDate(Date value) {
		if (value == null)
			return null;
		return new java.sql.Date(value.getTime());
	}

	public boolean checkLongFormatError(String fieldName, boolean optional) {
		boolean rtn = false;
		String value = parameters.get(fieldName);
		if (!isEmpty(value)) {
			try {
				Long.parseLong(value.trim());
			} catch (Exception e) {
				addError(fieldName, "输入数值格式错误");
				rtn = true;
			}
		} else {
			if (!optional) {
				addEmptyError(fieldName);
				rtn = true;
			}
		}
		return rtn;
	}

	public static Map<String, String> toSingleParameters(HttpServletRequest req) {
		Map<String, String> rtn = new HashMap<String, String>();
		Enumeration parameterNames = req.getParameterNames();
		for (; parameterNames.hasMoreElements();) {
			String param = (String) parameterNames.nextElement();
			String[] values = req.getParameterValues(param);
			if (values != null)
				rtn.put(param, values[0]);
		}
		return rtn;
	}
}
