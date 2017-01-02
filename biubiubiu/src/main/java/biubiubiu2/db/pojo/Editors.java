package biubiubiu2.db.pojo;

public class Editors {
    private Integer editorid;

    private String name;

    private String sex;

    private String age;

    private String position;

    public Integer getEditorid() {
        return editorid;
    }

    public void setEditorid(Integer editorid) {
        this.editorid = editorid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age == null ? null : age.trim();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }
}