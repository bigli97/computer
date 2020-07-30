package computer.dao;

import org.apache.ibatis.annotations.Mapper;

import computer.entity.HDFSIndex;
@Mapper
public interface HDFSIndexDao {
	void create(HDFSIndex hdfsIndex);
	HDFSIndex getHDFSIndex();
}
