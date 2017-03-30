package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.domain.Seller;

import java.util.List;



public interface SellerService
{
    long getPages(String sellerSearch);

    List<Seller> findSeller(int page_no, String sellerSearch);

    Seller findSellerLogin(Seller seller);

    void addSeller(Seller seller);

    List<Seller> findSellerName();
}
