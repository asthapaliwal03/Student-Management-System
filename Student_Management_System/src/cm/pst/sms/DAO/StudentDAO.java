package cm.pst.sms.DAO;
import java.sql.*;
import java.util.*;

import com.pst.sms.DB.DBConnection;
import com.pst.sms.DTO.StudentDTO;
import com.pst.sms.BO.StudentBO;

public class StudentDAO {
	private final String query_save="insert into student(enroll,fname,lname,email,gender,course)values(?,?,?,?,?,?);";
	private final String view_query="select enroll,fname,lname,email,gender,course from student";
	private final String delete_query="delete from student where enroll=?";
	private final String search="select enroll,fname,lname,email,gender,course from student where enroll=?";
	private final String update_query="update student set fname=?,lname=?,email=?,gender=?,course=? where enroll=?";
	public int addStudent(StudentBO stud_BO) {
		int i=0;
		try {
		Connection c=DBConnection.getConn();
		if(c== null) {
			System.out.println("connection not work");
		}else {
		PreparedStatement ps=c.prepareStatement(query_save);
		ps.setInt(1,stud_BO.getEnroll());
		ps.setString(2,stud_BO.getFname());
		ps.setString(3,stud_BO.getLname());
		ps.setString(4,stud_BO.getEmail());
		ps.setString(5,stud_BO.getGender());
		ps.setString(6,stud_BO.getCourse());
		 i=ps.executeUpdate();
		 c.close();
		}}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("line:"+i);
		return i;
	}
	
	
	public List<StudentDTO> viewStudent() {
		StudentDTO s_dto=null;
		List<StudentDTO> s_list=new ArrayList<StudentDTO>();
		try {
			Connection c=DBConnection.getConn();
			PreparedStatement ps=c.prepareStatement(view_query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s_dto=new StudentDTO();
				s_dto.setEnroll(rs.getInt(1));
				s_dto.setFname(rs.getString(2));
				s_dto.setLname(rs.getString(3));
				s_dto.setEmail(rs.getString(4));
				s_dto.setGender(rs.getString(5));
				s_dto.setCourse(rs.getString(6));
				s_list.add(s_dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s_list;
	}
	
	public boolean deleteMethod(int enroll) {
		boolean status=true;
		try {
			Connection c=DBConnection.getConn();
			PreparedStatement ps=c.prepareStatement(delete_query);
			ps.setInt(1, enroll);
			status=ps.execute();
			System.out.print(status);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return status;
	}
	
	public StudentDTO getStudentDetail(int enroll) {
		StudentDTO s_dto=null;
		try {
			Connection c=DBConnection.getConn();
			PreparedStatement ps=c.prepareStatement(search);
			ps.setInt(1,enroll);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				s_dto=new StudentDTO();
				s_dto.setEnroll(rs.getInt(1));
				s_dto.setFname(rs.getString(2));
				s_dto.setLname(rs.getString(3));
				s_dto.setEmail(rs.getString(4));
				s_dto.setGender(rs.getString(5));
				s_dto.setCourse(rs.getString(6));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s_dto;
	}
	public int updateDetail(StudentBO stud_BO) {
		
		int i=0;
		try {
		Connection c=DBConnection.getConn();
		PreparedStatement ps=c.prepareStatement(update_query);
		ps.setString(1,stud_BO.getFname());
		ps.setString(2,stud_BO.getLname());
		ps.setString(3,stud_BO.getEmail());
		ps.setString(4,stud_BO.getGender());
		ps.setString(5,stud_BO.getCourse());
		ps.setInt(6,stud_BO.getEnroll());
		 i=ps.executeUpdate();
		 c.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}
