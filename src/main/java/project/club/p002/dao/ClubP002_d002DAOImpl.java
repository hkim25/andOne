package project.club.p002.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.club.vo.ClubMemberVO;

@Repository
public class ClubP002_d002DAOImpl implements ClubP002_d002DAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ClubMemberVO> waitMemberList(Map<String, Object> searchMap) {
		List<ClubMemberVO> waitMemberList = sqlSession.selectList("club.p002.waitMemberList", searchMap);
		return waitMemberList;
	}

	@Override
	public void permitMember(Map<String, Object> updateMap) {
		sqlSession.update("club.p002.permitMember", updateMap);
	}

	@Override
	public void denyMember(Map<String, Object> deleteMap) {
		sqlSession.delete("club.p002.denyMember", deleteMap);
	}

	@Override
	public List<ClubMemberVO> clubMemberList(Map<String, Object> searchMap) {
		List<ClubMemberVO> list = sqlSession.selectList("club.p002.clubMemberList",searchMap);
		return list;
	}

	@Override
	public void qualifyMember(Map<String, Object> searchMap) {
		sqlSession.update("club.p002.qualifyMember",searchMap);
	}

	@Override
	public void kickMember(Map<String, Object> searchMap) {
		sqlSession.update("club.p002.kickMember", searchMap);
		sqlSession.update("club.p002.kickMemberCnt", searchMap);
	}

	@Override
	public void usurpMember(Map<String, Object> searchMap) {
		sqlSession.update("club.p002.usurpMember", searchMap);
	}
}
