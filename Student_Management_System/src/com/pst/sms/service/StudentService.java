package com.pst.sms.service;
import java.util.*;
import com.pst.sms.BO.StudentBO;
import com.pst.sms.VO.StudentVO;
import com.pst.sms.DTO.StudentDTO;
import cm.pst.sms.DAO.StudentDAO;

public class StudentService {
	StudentDAO s_dao=null;
	StudentBO s_bo=null;
public int saveStudent(StudentVO stud_vo) {
	s_dao=new StudentDAO();
	s_bo=new StudentBO();
	s_bo.setEnroll(stud_vo.getEnroll());
	s_bo.setFname(stud_vo.getFname());
	s_bo.setLname(stud_vo.getLname());
	s_bo.setGender(stud_vo.getGender());
	s_bo.setEmail(stud_vo.getEmail());
	s_bo.setCourse(stud_vo.getCourse());
	int i=s_dao.addStudent(s_bo);
	return i;
}
public List<StudentDTO> getAllStudent() {
	s_dao=new StudentDAO();
	return s_dao.viewStudent();
}
public boolean remove(int enroll) {
	s_dao=new StudentDAO();
	return s_dao.deleteMethod(enroll);
	
}
public StudentDTO getdetail(int enroll) {
	s_dao=new StudentDAO();
	return s_dao.getStudentDetail(enroll);
	
}
public int modifyStudentDetail(StudentVO stud_vo) {
	s_dao=new StudentDAO();
	s_bo=new StudentBO();
	s_bo.setEnroll(stud_vo.getEnroll());
	s_bo.setFname(stud_vo.getFname());
	s_bo.setLname(stud_vo.getLname());
	s_bo.setGender(stud_vo.getGender());
	s_bo.setEmail(stud_vo.getEmail());
	s_bo.setCourse(stud_vo.getCourse());
	int i=s_dao.updateDetail(s_bo);
	return i;
}
}
