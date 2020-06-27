package cn.edu.ldu.action;

import cn.edu.ldu.PO.Admin;
import cn.edu.ldu.dao.HbnUtils;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class AdminAction extends ActionSupport implements SessionAware {
    private String username;
    private String password;
    private Map<String,Object> session;
    private Session hbnSession;


    @Override
    public String execute() throws Exception {
        String hql = "from Admin where admin_name= ?0 and admin_password= ?1";
        //HQL查询验证身份
        hbnSession = HbnUtils.getSession();
        System.out.println(this.username);
        hbnSession.beginTransaction();
        Admin admin = (Admin)hbnSession.createQuery(hql)
                .setParameter(0,this.getUsername())
                .setParameter(1,this.getPassword()).uniqueResult();
        System.out.println(admin);
        hbnSession.getTransaction().commit();
        if(admin  ==  null){
            System.out.println(admin);
            return "login";
        }else {
            session.put("adminUsername",admin.getAdmin_name());
            return "success";
        }
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

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }

}
