package com.debug.middleware.server;
/**
 * Created by Administrator on 2019/3/2.
 */

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * @Author:debug (SteadyJack)
 * @Date: 2019/3/2 17:58
 **/
@SpringBootApplication
@MapperScan(basePackages = "com.debug.middleware.model")
public class MainApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return super.configure(builder);
    }

    public static void main(String[] args) {
        SpringApplication.run(MainApplication.class,args);
    }
}