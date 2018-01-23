package online.resume;

import online.resume.mapper.PersonalEmailMapper;
import online.resume.model.PersonalEmail;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

/**
 * Created by 84825 on 2018/1/23.
 */
@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration( value = {"classpath:applicationContext-mybatis.xml"})
public class Check {
    @Autowired
    private PersonalEmailMapper personalEmailMapper;
    @Test
    public void fun(){
     int row=personalEmailMapper.savePersonalEmail(new PersonalEmail("33","23","33",new Date()));
        System.out.println("查看保存情况："+row);
    }
}
