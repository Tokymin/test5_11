package toky.geek.database;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "student", schema = "practice5_11")
public class StudentEntity {
    private String name;
    private String sex;
    private String np;

    @Id
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "np")
    public String getNp() {
        return np;
    }

    public void setNp(String np) {
        this.np = np;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StudentEntity that = (StudentEntity) o;
        return Objects.equals(name, that.name) &&
                Objects.equals(sex, that.sex) &&
                Objects.equals(np, that.np);
    }

    @Override
    public int hashCode() {

        return Objects.hash(name, sex, np);
    }
}
