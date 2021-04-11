package com.pst.sms.controller;

import java.io.IOException;
import com.pst.sms.service.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteStudentController
 */
@WebServlet("/DeleteStudentController")
public class DeleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       StudentService service=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int enroll=Integer.parseInt(request.getParameter("enroll"));
		service=new StudentService();
		boolean re=service.remove(enroll);
		if(re==false) {
			request.setAttribute("msg","Successfully data deleted to database...");
			request.getRequestDispatcher("./delete_student.jsp").forward(request, response);
			//response.getWriter().println("Data deleted...");

		}
		
	}

}
