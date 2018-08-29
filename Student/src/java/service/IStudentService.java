package service;

import Model.Student;

public interface IStudentService {

	public void registerStudent(Student stu);
	
	public String updateStudent(String userID,Student st);

        public boolean loginCheck(String sid, String pass,String utype);

        public String getID(String sid, String pass,String utype);

        public void deleteStudent(String userID);
	
	
	
}
