package cn.edu.ldu.PO;

public class Identity {
    private int id;
    private String entity;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEntity() {
        return entity;
    }

    public void setEntity(String entity) {
        this.entity = entity;
    }

    @Override
    public String toString() {
        return "Identity{" +
                "id=" + id +
                ", entity='" + entity + '\'' +
                '}';
    }
}
