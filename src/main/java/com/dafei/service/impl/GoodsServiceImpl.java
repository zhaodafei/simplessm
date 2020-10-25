package com.dafei.service.impl;

import com.dafei.dao.GoodsDao;
import com.dafei.model.Goods;
import com.dafei.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    // todo: 这里还没有和数据库操作
    @Resource
    private GoodsDao goodsDao;

    @Override
    public List<Goods> selectAllGoods() {
        return goodsDao.selectAllGoods();
    }

    @Override
    public Goods selectGoodsOne(long goodsId) {
        return goodsDao.selectGoodsOne(goodsId);
    }

    @Override
    public void save(Goods goods) {
        goodsDao.save(goods);
    }

    @Override
    public int update(Goods goods) {
        return 0;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
