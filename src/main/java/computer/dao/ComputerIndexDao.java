package computer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import computer.entity.ComputerIndex;
@Mapper
public interface ComputerIndexDao {
	void create(ComputerIndex computerIndex);
	ComputerIndex getComputerIndex();
	void deleteComputerIndex();
	int getCount();
	List<ComputerIndex> getAll();
}
