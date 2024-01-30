package home.work.task6;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private Long id = 0L;

    public Long getId() {
        id++;
        return id;
    }
    private List<Student> studentList = new ArrayList<Student>();
    public List<Student> getStudentList() {
        return studentList;
    }
    public void addStudent(Student student) {
        studentList.add(student);
    }
    public void removeStudent(Student student) {
        studentList.remove(student);
    }
}
