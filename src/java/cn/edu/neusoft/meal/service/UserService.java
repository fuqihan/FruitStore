package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Admin;
import cn.edu.neusoft.meal.domain.User;

import java.util.List;

public interface UserService {

    User getUserByNameAndPassword(User user);

    List<User> findUser(int page_no,String userSearch);

    Boolean addUser(User user);

    int shopNumber(int id);

    int findUserId(Object userName);

    Admin findAdmin(Admin admin);

    long getPages(String userSearch);

    User findUpdeteUser(String id);

    Boolean updateUser(User user);

    void deleteUser(String id);

    User findNamePsd(String value);

    List<User> RegisterName(String userName);
}
