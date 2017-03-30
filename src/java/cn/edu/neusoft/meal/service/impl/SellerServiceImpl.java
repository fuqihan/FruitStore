package cn.edu.neusoft.meal.service.impl;


import cn.edu.neusoft.meal.domain.Seller;
import cn.edu.neusoft.meal.mapper.SellerDao;
import cn.edu.neusoft.meal.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SellerServiceImpl implements SellerService {
    @Autowired
    SellerDao dao;

    @Override
    public long getPages(String sellerSearch) {
        long userCount=dao.getPages(sellerSearch);;
        if(userCount%5==0){
            return userCount/5;
        }else{
            return userCount/5+1;
        }

    }

    @Override
    public List<Seller> findSeller(int page_no, String sellerSearch) {
        return dao.findSeller(page_no,sellerSearch);
    }

    @Override
    public Seller findSellerLogin(Seller seller) {
        return dao.findSellerLogin(seller);
    }

    @Override
    public void addSeller(Seller seller) {
        dao.addSeller(seller);
    }

    @Override
    public List<Seller> findSellerName() {
        return dao.findSellerName();
    }

}
