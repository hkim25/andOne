package project.and.p002.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.and.p002.dao.AndP002_d002DAO;
import project.and.vo.AndOneMemberVO;

@Service
public class AndP002_d002ServiceImpl implements AndP002_d002Service {
	@Autowired
	private AndP002_d002DAO p002_d002DAO;
	
	@Override
	public List<AndOneMemberVO> AndOnewaitMemList(String one_id) {
		List<AndOneMemberVO> AndOnewaitMemList = p002_d002DAO.selectAndOnewaitMemList(one_id);
		return AndOnewaitMemList;
	}
	
	@Override
	public void okOneMember(Map<String, Object> okMap) {
		p002_d002DAO.updateOkOneMember(okMap);
		
	}
	@Override
	public void denyOneMember(Map<String, Object> denyMap) {
		p002_d002DAO.updateDenyOneMember(denyMap);
	}

	@Override
	public int CancelTime(String one_id) {
		int CancelTime = p002_d002DAO.selectCancelTime(one_id);
		return CancelTime;
	}

	@Override
	public void cancelOneMember(Map<String, Object> cancelMap) {
		p002_d002DAO.updateCancelOneMember(cancelMap);
	} 

}
