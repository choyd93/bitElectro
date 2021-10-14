package com.bc.model.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.NoticeVO;
import com.bc.mybatis.DBService;

public class NoticeDAO {
	
	//고객센터 전체 글의 전체 건수 조회
	public static int getTotalCount(int ccategory) {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("bitelectro.totalCount", ccategory);
		ss.close();
		return totalCount;
	}

	//현재 페이지에 해당하는 글목록(게시글) 가져오기
	public static List<NoticeVO> getList(int begin, int end, int ccategory) {
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("num", ccategory);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<NoticeVO> list = ss.selectList("bitelectro.boardlist", map);
		ss.close();
		return list;
	}
	
	//게시글 하나 조회
	public static NoticeVO selectOne(int cno) {
		SqlSession ss = DBService.getFactory().openSession();
		NoticeVO vo = ss.selectOne("bitelectro.one", cno);
		ss.close();
		return vo;
	}
}
