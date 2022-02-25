package com.tobi.ecommerce;



import com.tobi.ecommerce.controller.IndexController;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



@SpringBootApplication
public class App  {

    private static final Logger logger = Logger.getLogger(App.class);


    // {
    //  BasicConfigurator.configure();
    // }



    public static void main(String[] args) { SpringApplication.run(App.class, args);



        logger.debug("loading index page..");
        logger.info("Info Message !");
        logger.warn("Warn level message");


    }

}
