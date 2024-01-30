package home.work.task2;

import java.util.ArrayList;
import java.util.List;

public class ListUser {
    public static List<User> getUsers(){
        List<User> users = new ArrayList<>();
        users.add(new User("Mukhammed","Marat","male", 19));
        users.add(new User("Islam","Aslant","male", 20));
        users.add(new User("Dariya","Karashasheva","female", 18));
        users.add(new User("Yermurat","Aitimov","male", 19));
        return users;
    }
}
