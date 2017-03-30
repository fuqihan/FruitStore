package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.domain.Orders;

import java.util.List;


public interface FruitsService {
    List<Fruits> findHitFruits(int a);

    Fruits fruitsShop(String id);

    List<Fruits> findShopCart(String name);

    List<Orders> findShopFruits1(String name);

    List<Fruits> searchFruits(String keywords,String conditions);

    List<Fruits> findFruitses(int page_no,String fruitSearch);

    long getPages(String fruitSearch);

    void updateFruit(Fruits fruits);

    void deleteFruit(String id);

    List<Fruits> findStoreFruits(String sName);

    void addFruits(Fruits fruits);

    void addStore(String fId, Object sellerId);

    String maxId();
}
