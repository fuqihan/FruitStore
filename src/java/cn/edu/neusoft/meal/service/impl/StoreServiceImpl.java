package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.mapper.StoreDao;
import cn.edu.neusoft.meal.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StoreServiceImpl implements StoreService {
    @Autowired
    StoreDao dao;

    @Override
    public void addNewCard(Object sel_id, String fru_id) {
        dao.addNewCard(sel_id,fru_id);
    }
}
