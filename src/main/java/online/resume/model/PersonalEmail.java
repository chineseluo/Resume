package online.resume.model;

import java.util.Date;

/**
 * Created by 84825 on 2018/1/23.
 */
public class PersonalEmail {
    private Long id;
    private String lookerName;
    private String lookerEmail;
    private String lookerMessage;
    private Date sendTime = new Date();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLookerName() {
        return lookerName;
    }

    public void setLookerName(String lookerName) {
        this.lookerName = lookerName;
    }

    public String getLookerEmail() {
        return lookerEmail;
    }

    public void setLookerEmail(String lookerEmail) {
        this.lookerEmail = lookerEmail;
    }

    public String getLookerMessage() {
        return lookerMessage;
    }

    public void setLookerMessage(String lookerMessage) {
        this.lookerMessage = lookerMessage;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public PersonalEmail(Long id, String lookerName, String lookerEmail, String lookerMessage, Date sendTime) {
        this.id = id;
        this.lookerName = lookerName;
        this.lookerEmail = lookerEmail;
        this.lookerMessage = lookerMessage;
        this.sendTime = sendTime;
    }

    public PersonalEmail(String lookerName, String lookerEmail, String lookerMessage, Date sendTime) {
        this.lookerName = lookerName;
        this.lookerEmail = lookerEmail;
        this.lookerMessage = lookerMessage;
        this.sendTime = sendTime;
    }

    public PersonalEmail(String lookerName, String lookerEmail, String lookerMessage) {
        this.lookerName = lookerName;
        this.lookerEmail = lookerEmail;
        this.lookerMessage = lookerMessage;
    }

    public PersonalEmail(Long id) {
        this.id = id;
    }
    public PersonalEmail() {

    }
}
