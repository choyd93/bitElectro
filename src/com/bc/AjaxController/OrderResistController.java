package com.bc.AjaxController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderResistController {

	@WebServlet("/orderResist")
	public class CartOrderController extends HttpServlet {
		private static final long serialVersionUID = 1L;

		// 나중에 구현
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("application/x-json; charset=UTF-8");
			
			System.out.println("orderResist get 실행~~~~~~~~");
			
			response.sendRedirect("paymentOk.jsp");
			
		}
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("application/x-json; charset=UTF-8");

			System.out.println("orderResist post 실행~~~~~~~~");

			response.sendRedirect("paymentOk.jsp");
			
		}
	}
}
