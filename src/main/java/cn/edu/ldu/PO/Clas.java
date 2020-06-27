package cn.edu.ldu.PO;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "clas")
public class Clas implements Serializable {
    private int clasid;
    private String clasname;
    private Set<Student> students= new HashSet<Student>();

    @ManyToMany
    @JoinTable(
            name = "s_course",
            joinColumns ={@JoinColumn(name = "clas_id")},
            inverseJoinColumns = {@JoinColumn(name = "student_id")}
    )
    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getClasid() {
        return clasid;
    }

    public void setClasid(int clasid) {
        this.clasid = clasid;
    }

    public String getClasname() {
        return clasname;
    }

    public void setClasname(String clasname) {
        this.clasname = clasname;
    }

    @Override
    public String toString() {
        return "Clas{" +
                "clasid=" + clasid +
                ", clasname='" + clasname + '\'' +
                '}';
    }
}
