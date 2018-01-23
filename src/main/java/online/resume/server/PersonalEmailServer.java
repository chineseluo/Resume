package online.resume.server;

import online.resume.model.PersonalEmail;

/**
 * Created by 84825 on 2018/1/23.
 */
public interface PersonalEmailServer {
    //保存客户端游客发送的信息
int savePersonalEmail(PersonalEmail personalEmail);
}
