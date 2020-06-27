package cn.edu.ldu.action;

import cn.edu.ldu.PO.Identity;
import cn.edu.ldu.dao.HbnUtils;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class IdentityAction extends ActionSupport implements SessionAware {
    private Identity identity;
    List<String> identityList;
    private Map<String,Object> session;

    public Identity getIdentity() {
        return identity;
    }

    public void setIdentity(Identity identity) {
        this.identity = identity;
    }

    public List<String> getIdentityList() {
        return identityList;
    }

    public void setIdentityList(List<String> identityList) {
        this.identityList = identityList;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
    public String identitychoice(){
        String hql="from identity";

        Session hbnSession= HbnUtils.getSession();
        System.out.println(identity.getEntity());
        hbnSession.beginTransaction();
        identityList=hbnSession.createQuery(hql).list();
        session.put("identityList",this.identityList);
        hbnSession.getTransaction().commit();
        if (identity.getId()!=1){
            return "student";
        }else {
            return "entity";
        }

    }
}
