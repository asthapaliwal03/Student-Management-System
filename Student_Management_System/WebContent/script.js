/**
 * for Add Student Validation
 */
function doValidate(){
	var enrollno = document.forms["student_detail"]["serollno"].value;
	var fname = document.forms["student_detail"]["fname"].value;
	var lname = document.forms["student_detail"]["lname"].value;
	var email = document.forms["student_detail"]["email"].value;
	var gender = document.forms["student_detail"]["gender"].value;
	var course = document.forms["student_detail"]["course"].value;
	var enrollstatus,lnamestatus,fnamestatus,emailstatus,genstatus,coursestatus,msg;
		if(enrollno==""){
			alert("please enter valid enrollment number");
			return false;
		}else if(fname==""){
			alert("please enter First Name");
			return false;
		}else if(lname==""){
			alert("please enter Last Name");
			return false;
		}else if(email==""){
			alert("please enter valid email");
			return false;
		}else if(gender==""){
			alert("please enter gender");
			return false;
		}else if(course==""){
			alert("please select course");
			return false;
		}else{
			alert("Student Details add successfully");
			return true;
		}
}
