package com.bc.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.command.CartCommand;
import com.bc.model.command.Command;
import com.bc.model.command.FaqCommand;
import com.bc.model.command.InquireCommand;
import com.bc.model.command.NoticeCommand;
//import com.bc.model.dao.EmployeeDAO;
//import com.bc.model.vo.EmployeeVO;

@WebServlet("/controller")
public class FrontControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand doGet() 실행~~");
		String type = request.getParameter("type");
		System.out.println("> type : " + type);
		
		Command command = null;
		if ("notice".equals(type)) {
			command = new NoticeCommand();
		} else if ("faq".equals(type)) {
			command = new FaqCommand();
		} else if ("inquire".equals(type)) {
			command = new InquireCommand();
		} else if ("cart".equals(type)) {
			command = new CartCommand();
		}
		String path = command.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> FrontControllerCommand doPost() 실행-----------------");
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	
}
