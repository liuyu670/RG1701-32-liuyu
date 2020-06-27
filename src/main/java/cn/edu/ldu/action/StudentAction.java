package cn.edu.ldu.action;

import cn.edu.ldu.PO.Student;
import cn.edu.ldu.dao.HbnUtils;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class StudentAction<HibernateTemplate> extends ActionSupport implements SessionAware {

    private Student stu;
    List<String> stuList;
    List<String> deptList;
    private Map<String,Object> session;
    //private Session hbnSession;
    private String name;
    private String password;




    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public List<String> getStuList() {
        return stuList;
    }

    public void setStuList(List<String> stuList) {
        this.stuList = stuList;
    }

    public List<String> getDeptList() {
        return deptList;
    }

    public void setDeptList(List<String> deptList) {
        this.deptList = deptList;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String login(){
        Session hbnSession = HbnUtils.getSession();
        System.out.println(this.getName());
        hbnSession.beginTransaction();
        String hql = "from Student where name=?0 and password=?1";
        stu=(Student)hbnSession.createQuery(hql)
                .setParameter(0,this.getName())
                .setParameter(1,this.getPassword()).uniqueResult();
        System.out.println(stu);
        session.put("stu",stu);
        hbnSession.getTransaction().commit();
        if (stu!=null){
            session.put("name",stu.getName());
            return "success";
        }else
            return "login";
    }
    //HQL查询所有学生信息

    public String findAll(){
        String hql = "from Student";

        Session hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).list();
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            System.out.println("ok");
            System.out.println(stuList);

            return "success";
        }else {
            return "error";
        }
    }

    //HQL查询：根据学生姓名模糊查询
    public String findByName(){
        String hql = "from Student where name like ?0";
        System.out.println("学生："+stu.getName());
        Session hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).setParameter(0,"%"+stu.getName()+"%").list();
        System.out.println(stuList);
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            return "success";
        }else {
            return "error";
        }
    }

    //HQL查询：根据学院查询学生信息
    public String findByDept(){
        String hql = "from Student where department like ?1";
        System.out.println("学院："+stu.getDepartment());
        Session hbnSession=HbnUtils.getSession();
        hbnSession.beginTransaction();
        stuList=hbnSession.createQuery(hql).setParameter(1,"%"+stu.getDepartment()).list();
        System.out.println(stuList);
        session.put("stuList",this.stuList);
        hbnSession.getTransaction().commit();
        if (stuList !=null){
            return "success";
        }else {
            return "error";
        }
    }

    //添加学生信息
    public String insert(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.save(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //修改学生信息
    public String update(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.update(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    //删除学生信息
    public String delete(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            hbnSession.delete(stu);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //学生修改密码
    public String updatePwd(){
        try {
            Session hbnSession = HbnUtils.getSession();
            hbnSession.beginTransaction();
            System.out.println(stu);
            Student stuTmp=(Student)hbnSession.get(Student.class,stu.getStudentID());
            stuTmp.setPassword(stu.getPassword());
            hbnSession.update(stuTmp);
            hbnSession.getTransaction().commit();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }


    /**
     * 使用hql语句进行分页查询
     * @param hql 需要查询的hql语句
     * @param offset 第一条记录索引
     * @param pageSize 每页需要显示的记录数
     * @return 当前页的所有记录
     */
    /*@SuppressWarnings("unchecked")
    public List findByPage(final String hql,
                           final int offset, final int pageSize)
    {
        //通过一个HibernateCallback对象来执行查询
        List list = getHibernateTemplate()
                .executeFind(new HibernateCallback()
                {
                    //实现HibernateCallback接口必须实现的方法
                    public Object doInHibernate(Session session)
                            throws HibernateException, SQLException
                    {
                        //执行Hibernate分页查询
                        List result = session.createQuery(hql)
                                .setFirstResult(offset)
                                .setMaxResults(pageSize)
                                .list();
                        return result;
                    }
                });
        return list;
    }


    // 获取总记录数
    public int getRows(String hql) {
        return getHibernateTemplate().find(hql).size();
    }*/

}
