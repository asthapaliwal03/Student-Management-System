package com.pst.sms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pst.sms.service.*;
import com.pst.sms.DTO.*;
import java.util.*;
/**
 * Servlet implementation class ViewStudentController
 */
@WebServlet("/ViewStudentController")
public class ViewStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewStudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentService service=new StudentService();
		List<StudentDTO> list =service.getAllStudent();
		request.setAttribute("list",list);
		request.getRequestDispatcher("./view_student.jsp").forward(request,response);
	}

}
