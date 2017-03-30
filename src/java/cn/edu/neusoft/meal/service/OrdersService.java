package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Orders;

import java.util.List;


public interface OrdersService {
    void deleteOrder(String s);

    void updateOrders(String number, String s);

    void addShopOrder(int userId, String id);

    List<Orders> findOrders();

    List<Orders> findOrdersShop(String name);

    List<Orders> findMyOrders(String name);
}
