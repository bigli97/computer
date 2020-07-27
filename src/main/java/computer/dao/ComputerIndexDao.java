package computer.dao;

import org.apache.ibatis.annotations.Mapper;

import computer.entity.ComputerIndex;
@Mapper
public interface ComputerIndexDao {
	void create(ComputerIndex computerIndex);
	ComputerIndex getComputerIndex();
	void deleteComputerIndex();
	int getCount();
}
