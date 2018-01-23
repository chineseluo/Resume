package online.resume.controller;

import online.resume.model.PersonalEmail;
import online.resume.server.PersonalEmailServer;
import online.resume.server.impl.MailService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Locale;
import java.util.UUID;

/**
 * Created by 84825 on 2018/1/23.
 */
@Controller
@RequestMapping(value = "/index")
public class ResumeController {
    @Autowired
    private PersonalEmailServer personalEmailServer;
    @Autowired
    @Qualifier("MailService")
    private MailService mailService;

    /**
     * 定位到index.jsp穿过servlet获取配置文件信息
     * @param locale
     * @param model
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String to_index(Locale locale, Model model){
        System.out.println("locale:"+locale);
        return "index";
    }

    /**
     * 文件异步上传
     * @param file
     * @param request
     * @return
     * @throws Exception
     */
    @PostMapping("do_upload")
    @ResponseBody
    public String do_upload(MultipartFile file, HttpServletRequest request) throws Exception{
        //文件夹路径
        String url=request.getSession().getServletContext().getRealPath("/upload");
        if(!new File(url).exists()){
            new File(url).mkdir();
        }
        System.out.println(url);
        //文件名
        String fileName= UUID.randomUUID().toString().replaceAll("-","")+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."),file.getOriginalFilename().length());
        System.out.println(fileName);
        FileUtils.copyInputStreamToFile(file.getInputStream(),new File(url+File.separator+fileName));
        return "{'url':'"+fileName+"'}";
    }

    //保存游客发送的信息

    /**
     * 数据库存档，发送邮件接收
     * @param personalEmail
     * @return
     */
    @PostMapping("savepersonal")
    public String savePersonalEmail(@ModelAttribute  PersonalEmail personalEmail){
        System.out.println(personalEmail);
        mailService.sendHtmlMail(personalEmail.getLookerEmail(),"简历返回信息",personalEmail.getLookerMessage());
        personalEmailServer.savePersonalEmail(personalEmail);
        return "index";
    }
}
