package cn.edu.ldu.action;

import cn.edu.ldu.PO.Course;
import cn.edu.ldu.dao.HbnUtils;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class CourseAction extends ActionSupport implements SessionAware {

    private Course course;
    private Map<String,Object> session;
    List<String> courseList;


    //管理员根据姓名查询学生成绩
    /*public String findScoreByName(){
        String hql="from Course where name like ?0";
        Session hbnSession= HbnUtils.getSession();
        hbnSession.beginTransaction();
        courseList=hbnSession.createQuery(hql).setParameter(0,course.getName()).list();
        System.out.println(courseList);
        session.put("courseList",this.courseList);
        hbnSession.getTransaction().commit();
        if (courseList!=null){
            return "success";
        }
        else {
            return "error";
        }

    }*/
    public String findScoreByName() {
        String hql = "from Clas where clasname like ?0";
        Session hbnSession = HbnUtils.getSession();
        hbnSession.beginTransaction();
        courseList = hbnSession.createQuery(hql).setParameter(0, course.getName()).list();
        System.out.println(courseList);
        session.put("courseList", this.courseList);
        hbnSession.getTransaction().commit();
        if (courseList != null) {
            return "success";
        } else {
            return "error";
        }
    }
        //管理员根据课程查询成绩
    public String findScoreByCourse(){
        String hql="from Course where clasname= ?1";
        Session hbnSession= HbnUtils.getSession();
        hbnSession.beginTransaction();
        courseList=hbnSession.createQuery(hql).setParameter(1,course.getClasname()).list();
        System.out.println(courseList);
        session.put("CourseList",this.courseList);
        hbnSession.getTransaction().commit();
        if (courseList!=null){
            return "success";
        }
        else {
            return "error";
        }
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public List<String> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<String> courseList) {
        this.courseList = courseList;
    }
}
