package online.resume.server.impl;

import online.resume.mapper.PersonalEmailMapper;
import online.resume.model.PersonalEmail;
import online.resume.server.PersonalEmailServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 84825 on 2018/1/23.
 */
@Service
public class PersonalEmailServerImpl implements PersonalEmailServer {
    @Autowired
    private PersonalEmailMapper personalEmailMapper;
    @Override
    public int savePersonalEmail(PersonalEmail personalEmail) {
        return personalEmailMapper.savePersonalEmail(personalEmail);
    }
}