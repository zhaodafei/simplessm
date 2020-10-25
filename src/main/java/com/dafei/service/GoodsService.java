package com.dafei.service;

import com.dafei.model.Goods;

import java.util.List;

public interface GoodsService {
    // 查询所有数据
    List<Goods> selectAllGoods();

    // 详细
    Goods selectGoodsOne(long id);

    // 添加
    void save(Goods goods);

    // 修改
    int update(Goods goods);

    // 删除
    boolean delete(int id);
}
