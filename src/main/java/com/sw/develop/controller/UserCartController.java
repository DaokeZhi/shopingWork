package com.sw.develop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by yanzhixiang on 2015/6/28.
 */
@Controller
@RequestMapping(value = "/cart")
public class UserCartController {

    private static Logger logger = LoggerFactory.getLogger(UserCartController.class);
    @RequestMapping(value = "show")
    public String showCart() {
        logger.info("showCart is start ...");
        return "index";
    }

}
