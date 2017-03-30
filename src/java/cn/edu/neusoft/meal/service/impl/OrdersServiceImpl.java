package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Orders;
import cn.edu.neusoft.meal.mapper.OrdersDao;
import cn.edu.neusoft.meal.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    OrdersDao dao;

    @Override
    public void deleteOrder(String s) {
        dao.deleteOrder(s);
    }

    @Override
    public void updateOrders(String number, String s) {
        dao.updateOrders(number,s);
    }

    @Override
    public void addShopOrder(int userId, String id) {
        dao.addShopOrder(userId,id);
    }

    @Override
    public List<Orders> findOrders() {
        return dao.findOrders();
    }

    @Override
    public List<Orders> findOrdersShop(String name) {
        return dao.findOrdersShop(name);
    }

    @Override
    public List<Orders> findMyOrders(String name)
    {
        return dao.findMyOrders(name);
    }
}
