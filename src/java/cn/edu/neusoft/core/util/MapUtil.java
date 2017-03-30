package cn.edu.neusoft.core.util;

import org.apache.commons.collections.map.CaseInsensitiveMap;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@SuppressWarnings({ "rawtypes", "unchecked" })
public class MapUtil {
	/**
	 * 根据值返回一个新的Map 值是数组时特殊处理：单值返回具体对象，多值返回用原来的数组构造的List 2013-3
	 * 将HashMap改为大小写不敏感的CaseInsensitiveMap
	 */
	
	public static Map getNaturalValueMap(Map srcMap, boolean caseInsensitive) {
		Map m = null;
		if (caseInsensitive) {
			m = new CaseInsensitiveMap();
		} else {
			m = new HashMap();
		}
		if (srcMap != null) {
			Iterator it = srcMap.keySet().iterator();
			String key = null;
			while (it.hasNext()) {
				key = (String) it.next();
				Object value = srcMap.get(key);
				if (value != null && (value instanceof Object[])) {
					Object[] array = (Object[]) value;
					if (array != null && array.length == 1) {
						value = array[0];
					} else {
						value = Arrays.asList(array);
					}
				}
				m.put(key, value);
			}
		}
		return m;
	}
	/**
	 * 根据值返回一个新的Map 值是数组时特殊处理：原来的数组构造的List 2013-3
	 * 将HashMap改为大小写不敏感的CaseInsensitiveMap
	 */
	
	public static Map getNaturalValueMapList(Map srcMap, boolean caseInsensitive) {
		Map m = null;
		if (caseInsensitive) {
			m = new CaseInsensitiveMap();
		} else {
			m = new HashMap();
		}
		if (srcMap != null) {
			Iterator it = srcMap.keySet().iterator();
			String key = null;
			while (it.hasNext()) {
				key = (String) it.next();
				Object value = srcMap.get(key);
				if (value != null && (value instanceof Object[])) {
					Object[] array = (Object[]) value;
						value = Arrays.asList(array);
				}
				m.put(key, value);
			}
		}
		return m;
	}

	public static Map getNaturalValueMap(Map srcMap) {
		return getNaturalValueMap(srcMap, false);
	}
	/**
	 * 只封装成Key List 
	 * @param srcMap 
	 * @return
	 */
	public static Map getNaturalValueMapForList(Map srcMap) {
		return getNaturalValueMapList(srcMap, false);
	}
}
