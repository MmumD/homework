package home.work.task6;

public class Student {
    private final Long id;
    private String name;
    private String surname;
    private int age;
    private String university;
    public Student(Long id, String name, String surname, int age, String university){
        this.id = id;
        this.name = name;
        this. surname = surname;
        this.university = university;
        this.age = age;
    }

    public Long getId() {
        return id;
    }

    public String getSurname() {
        return surname;
    }

    public int getAge() {
        return age;
    }

    public String getName() {
        return name;
    }

    public String getUniversity() {
        return university;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUniversity(String university) {
        this.university = university;
    }
}
