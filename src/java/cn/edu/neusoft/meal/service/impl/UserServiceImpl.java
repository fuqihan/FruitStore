package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.mapper.UserDao;
import cn.edu.neusoft.meal.service.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
@Autowired
 private UserDao dao;

	@Override
	public User getUserByNameAndPassword(User user) {
		return dao.getUserByNameAndPassword(user);
	}

	@Override
	public List<User> findUser(int page_no,String userSearch) {
		return dao.findUser(page_no,userSearch);
	}

	@Override
	public Boolean addUser(User user) {
		return dao.addUser(user);
	}

	@Override
	public int shopNumber(int id) {
		return dao.shopNumber(id);
	}

	@Override
	public int findUserId(Object userName) {
		return dao.findUserId(userName);
	}

	@Override
	public Admin findAdmin(Admin admin) {
		return dao.findAdmin(admin);
	}

	@Override
	public long getPages(String userSearch) {
		long userCount=dao.getPages(userSearch);;
		if(userCount%5==0){
			return userCount/5;
		}else{
			return userCount/5+1;
		}
	}

	@Override
	public User findUpdeteUser(String id) {
		return dao.findUpdeteUser(id);
	}

	@Override
	public Boolean updateUser(User user) {
		return dao.updateUser(user);
	}

	@Override
	public void deleteUser(String id) {
		dao.deleteUser(id);
	}

	@Override
	public User findNamePsd(String value) {
		return dao.findNamePsd(value);
	}

	@Override
	public List<User> RegisterName(String userName) {
		return dao.RegisterName(userName);
	}

}
