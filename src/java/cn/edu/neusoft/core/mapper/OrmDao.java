package cn.edu.neusoft.core.mapper;

import cn.edu.neusoft.core.domain.OrmVO;

import java.util.List;

public interface OrmDao {

	public List<String> listTables(OrmVO vo);
	public List<OrmVO> listTableCols(OrmVO vo);
	
}
