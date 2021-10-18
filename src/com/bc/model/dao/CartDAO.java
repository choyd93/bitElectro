package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.CartVO;
import com.bc.mybatis.DBService;

public class CartDAO {
	
	// 장바구니 리스트 가져오기
	public static List<CartVO> cartSelectList(String mid) {
		SqlSession ss = DBService.getFactory().openSession();
		List<CartVO> cvo = ss.selectList("bitElectro.cartSelectList", mid);
		ss.close();
		return cvo;
	}

}
