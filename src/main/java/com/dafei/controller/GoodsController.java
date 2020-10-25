package com.dafei.controller;

import com.dafei.model.Goods;
import com.dafei.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("Index")
    public ModelAndView toGoodsIndex() {
        ModelAndView mv = new ModelAndView();
        List<Goods> allGoods = goodsService.selectAllGoods();
        mv.addObject("allGoods", allGoods);
        mv.setViewName("goods/index");
        return mv;
    }

    @RequestMapping("detail")
    public ModelAndView toGoodsDetail(int id) {
        ModelAndView mv = new ModelAndView();
        Goods goods = goodsService.selectGoodsOne(id);
        mv.addObject("goods", goods);
        mv.setViewName("goods/detail");
        return mv;
    }

    @RequestMapping("toAdd")
    public String toGoodsAdd() {
        return "goods/add";
    }

    @RequestMapping("Add")
    public String goodsAdd(Goods goods,Model model) {
        BigDecimal UnitPrice = new BigDecimal(String.valueOf(goods.getUnitPrice()));
        int GoodsNumber = goods.getGoodsNumber();
        BigDecimal countPrice = UnitPrice.multiply(BigDecimal.valueOf(GoodsNumber));
        // BigDecimal countPrice = new BigDecimal(10.50);
        goods.setCountPrice(countPrice);

        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        System.out.println(sdf.format(calendar.getTime()));
        goods.setCreatedTime(sdf.format(calendar.getTime()));

        goodsService.save(goods);
        return "redirect:/goods/Index";
    }

    @RequestMapping("Update")
    public String toGoodsUpdate() {
        return "goods/update";
    }
}
