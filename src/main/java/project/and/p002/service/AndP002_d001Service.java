package project.and.p002.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

public interface AndP002_d001Service {
	public void insertAndOne(Map<String,Object> Andone) throws DataAccessException;
	public void insertOneMem(Map<String, Object> andone);
	public void deleteAndOne(String one_id);
	public int countOneMem(String one_id);
	public void completeAndOne(Map<String, Object> completeMap);
}
