package com.rabbiter.staff.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class ResourceConfig extends WebMvcConfigurationSupport {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //在windows环境下的图片存放资源路径
        String winPath = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\files\\";
        //在Linux环境下的图片存放资源路径
        String linuxPath = "/usr/local/my_project/files/";
        String os = System.getProperty("os.name");
        if (os.toLowerCase().startsWith("win")) {  //windows系统
            //第一个方法设置访问路径前缀，第二个方法设置资源路径
            registry.addResourceHandler("/files/**").
                    addResourceLocations("file:"+winPath);
        }else{//linux系统
            registry.addResourceHandler("/files/**").
                    addResourceLocations("file:"+linuxPath);
        }
        super.addResourceHandlers(registry);
    }


}
