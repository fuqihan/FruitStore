package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.Admin;
import cn.edu.neusoft.meal.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    User getUserByNameAndPassword(User user);

    List<User> findUser(int page_no,String userSearch);

    boolean addUser(User user);

    int shopNumber(int id);

    int findUserId(Object userName);

    Admin findAdmin(Admin admin);

    long getPages(String userSearch);

    User findUpdeteUser(String id);

    Boolean updateUser(User user);

    void deleteUser(String id);

    User findNamePsd(String value);

    List<User> RegisterName(@Param("userName") String userName);
}
