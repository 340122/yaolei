package cn.massz.core.po;

import java.util.Date;

/**
 * 学生Student持久化类
 */
public class Student {
    private Integer id;
    private String stu_sno;
    private String stu_name;
    private Integer stu_age;
    private String stu_phone;
    private String stu_gender;
    private Double chinese;
    private Double maths;
    private Double english;
    private Double physical;
    private Double pc;
    private Double history;
    private String classs;
    private Integer create_id;
    private Date create_time;
    private Integer start;
    private Integer rows;

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", stu_sno='" + stu_sno + '\'' +
                ", stu_name='" + stu_name + '\'' +
                ", stu_age=" + stu_age +
                ", stu_phone='" + stu_phone + '\'' +
                ", stu_gender='" + stu_gender + '\'' +
                ", chinese=" + chinese +
                ", maths=" + maths +
                ", english=" + english +
                ", physical=" + physical +
                ", pc=" + pc +
                ", history=" + history +
                ", classs='" + classs + '\'' +
                ", create_id=" + create_id +
                ", create_time=" + create_time +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Double getChinese() {
        return chinese;
    }

    public Integer getCreate_id() {
        return create_id;
    }

    public void setCreate_id(Integer create_id) {
        this.create_id = create_id;
    }

    public void setChinese(Double chinese) {
        this.chinese = chinese;
    }

    public Double getMaths() {
        return maths;
    }

    public void setMaths(Double maths) {
        this.maths = maths;
    }

    public Double getEnglish() {
        return english;
    }

    public void setEnglish(Double english) {
        this.english = english;
    }

    public Double getPhysical() {
        return physical;
    }

    public void setPhysical(Double physical) {
        this.physical = physical;
    }

    public Double getPc() {
        return pc;
    }

    public void setPc(Double pc) {
        this.pc = pc;
    }

    public Double getHistory() {
        return history;
    }

    public void setHistory(Double history) {
        this.history = history;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getStu_sno() {
        return stu_sno;
    }

    public void setStu_sno(String stu_sno) {
        this.stu_sno = stu_sno;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public Integer getStu_age() {
        return stu_age;
    }

    public void setStu_age(Integer stu_age) {
        this.stu_age = stu_age;
    }

    public String getStu_phone() {
        return stu_phone;
    }

    public void setStu_phone(String stu_phone) {
        this.stu_phone = stu_phone;
    }

    public String getStu_gender() {
        return stu_gender;
    }

    public void setStu_gender(String stu_gender) {
        this.stu_gender = stu_gender;
    }

    public String getClasss() {
        return classs;
    }

    public void setClasss(String classs) {
        this.classs = classs;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
