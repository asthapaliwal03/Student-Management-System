package com.pst.sms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pst.sms.VO.StudentVO;
import com.pst.sms.service.StudentService;

/**
 * Servlet implementation class UpdateStudentController
 */
@WebServlet("/UpdateStudentController")
public class UpdateStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentService stud_service=null;
	StudentVO stud_vo=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 stud_vo=new StudentVO();
		 stud_service=new StudentService();
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String course=request.getParameter("course");
		String gender=request.getParameter("gender");
		
		stud_vo.setEnroll(rollno);
		stud_vo.setFname(fname);
		stud_vo.setLname(lname);
		stud_vo.setCourse(course);
		stud_vo.setEmail(email);
		stud_vo.setGender(gender);
		int i=stud_service.modifyStudentDetail(stud_vo);
		
		if(i!=0) {
			request.setAttribute("msg","Successfully data Updated to database...");
			request.getRequestDispatcher("./update_student.jsp").forward(request, response);
		//response.getWriter().println("Data updated");
			//System.out.print("data: " +rollno+" "+fname+" "+lname+" "+email+" "+gender+" "+" "+course);
		}

	}

}
