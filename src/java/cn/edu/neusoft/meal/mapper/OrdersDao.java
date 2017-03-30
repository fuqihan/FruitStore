package cn.edu.neusoft.meal.mapper;


import cn.edu.neusoft.meal.domain.Orders;

import java.util.List;

public interface OrdersDao {
    void deleteOrder(String id);

    void updateOrders(String number, String s);

    void addShopOrder(int userId, String id);

    List<Orders> findOrders();

    List<Orders> findOrdersShop(String name);

    List<Orders> findMyOrders(String name);
}
