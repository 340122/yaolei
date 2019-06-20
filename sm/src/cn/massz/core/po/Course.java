package cn.massz.core.po;

/**
 * 成绩持久化类
 */
public class Course {
    private Integer id;
    private Double chinese;
    private Double maths;
    private Double english;
    private Double physical;
    private Double pc;
    private Double history;
    private Integer stu_sno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getChinese() {
        return chinese;
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

    public Integer getStu_sno() {
        return stu_sno;
    }

    public void setStu_sno(Integer stu_sno) {
        this.stu_sno = stu_sno;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", chinese=" + chinese +
                ", maths=" + maths +
                ", english=" + english +
                ", physical=" + physical +
                ", pc=" + pc +
                ", history=" + history +
                ", stu_sno=" + stu_sno +
                '}';
    }
}
