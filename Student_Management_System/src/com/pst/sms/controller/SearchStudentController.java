package com.pst.sms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pst.sms.service.StudentService;
import com.pst.sms.DTO.StudentDTO;
/**
 * Servlet implementation class SearchStudentController
 */
@WebServlet("/SearchStudentController")
public class SearchStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   StudentService s=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int enroll=Integer.parseInt(request.getParameter("enroll"));
		s=new StudentService();
		StudentDTO dto=s.getdetail(enroll);
		request.setAttribute("dto",dto);
		request.getRequestDispatcher("./update_student.jsp").forward(request,response);
		
	}

}
