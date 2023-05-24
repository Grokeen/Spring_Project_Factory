package SALT_model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Employee {
    String empno;
   String username;
   String password;
   String deptno;
   String content;
   public Employee() {
      
   }
   public  String getEmpno() {
      return empno;
   }
   public void setEmpno(String empno) {
      this.empno = empno;
   }
   public String getUsername() {
      return username;
   }
   public void setUsername(String username) {
      this.username = username;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getDeptno() {
      return deptno;
   }
   public void setDeptno(String deptno) {
      this.deptno = deptno;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   @Override
   public String toString() {
      return "Employee [empno=" + empno + ", username=" + username + ", password=" + password + ", deptno=" + deptno
            + ", content=" + content + "]";
   }
   
   
}