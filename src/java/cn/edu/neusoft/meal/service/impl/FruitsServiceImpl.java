package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.domain.Orders;
import cn.edu.neusoft.meal.mapper.FruitsDao;
import cn.edu.neusoft.meal.service.FruitsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class FruitsServiceImpl implements FruitsService {

    @Autowired
    FruitsDao dao;
    @Override
    public List<Fruits> findHitFruits(int a) {
        return dao.findHitFruits(a);
    }

    @Override
    public Fruits fruitsShop(String id) {
        return dao.fruitsShop(id);
    }

    @Override
    public List<Fruits> findShopCart(String name) {
        return dao.findShopCart(name);
    }

    @Override
    public List<Orders> findShopFruits1(String name) {
        return dao.findShopFruits1(name);
    }

    @Override
    public List<Fruits> searchFruits(String keywords,String conditions) {
        if(conditions==null){
            return dao.searchFruits(keywords,conditions);
        }
        else if(conditions.equals("2")) {
            return dao.searchFruits2(keywords,conditions);
        }
        else if(conditions.equals("1")){
            return dao.searchFruits1(keywords);
        }
        else{
            return dao.searchFruits3(keywords);
        }
    }

    @Override
    public List<Fruits> findFruitses(int page_no,String fruitSearch) {
        return dao.findFruitses(page_no,fruitSearch);
    }

    @Override
    public long getPages(String fruitSearch) {
        long userCount=dao.getPages(fruitSearch);;
        if(userCount%5==0){
            return userCount/5;
        }else{
            return userCount/5+1;
        }
    }

    @Override
    public void updateFruit(Fruits fruits) {
        dao.updateFruit(fruits);
    }

    @Override
    public void deleteFruit(String id) {
        dao.deleteFruit(id);
    }

    @Override
    public List<Fruits> findStoreFruits(String sName)
    {
        return dao.findStoreFruits(sName);
    }

    @Override
    public void addFruits(Fruits fruits)
    {
         dao.addFruits(fruits);
    }

    @Override
    public void addStore(String fId, Object sellerId)
    {
        dao.addStore(fId,sellerId);
    }

    @Override
    public String maxId() {
        return dao.maxId();
    }


}
