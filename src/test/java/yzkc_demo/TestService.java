package yzkc_demo;

import java.util.List;  
import com.service.*;
import com.model.user;  
import org.apache.log4j.Logger;  
import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;  
  
import com.alibaba.fastjson.JSON;  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = { "classpath:spring.xml",  
        "classpath:spring-mybatis.xml" })  
public class TestService {  
  
    private static final Logger LOGGER = Logger  
            .getLogger(TestService.class);  
  
    @Autowired  
    private userService userService;  
  
      
    @Test  
    public void testQueryById1() {  
        user userInfo = userService.select("admin", "123456");  
        LOGGER.info(JSON.toJSON(userInfo));  
    }  
  
    @Test  
    public void testQueryAll() {  
        List<user> userInfos = userService.getuser();  
        LOGGER.info(JSON.toJSON(userInfos));  
    }  
}  
