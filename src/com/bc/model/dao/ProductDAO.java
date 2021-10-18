package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.ProductVO;
import com.bc.mybatis.DBService;

public class ProductDAO {
	
	// 장바구니 리스트 가져오기
		public static ProductVO selectProd(String pcode) {
			SqlSession ss = DBService.getFactory().openSession();
			ProductVO pvo = ss.selectOne("bitElectro.selectProd", pcode);
			ss.close();
			return pvo;
		}


}
