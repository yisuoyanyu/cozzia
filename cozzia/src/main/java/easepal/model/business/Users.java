package easepal.model.business;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "PUBLIC_USERS", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Users implements Serializable {
    private String userId;
    private String email;
    private String firstName;
    private String lastName;
    private String password;

    private Date birthday;

    private Integer sex;
    private String phone;
    private String address;
    private String remark;

    private Date createTime;

    private Integer status;

    private Set<Feedback> feedbacks = new HashSet<Feedback>(0);
    private Set<UserMember> userMembers = new HashSet<UserMember>(0);
    private Set<OperationRecord> operationRecords = new HashSet<OperationRecord>(0);

    public Users() {
        createTime = new Date();
    }

    @Id
    @Column(name = "UserId", unique = true, nullable = false, length = 36)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Column(name = "Email", nullable = false, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "FirstName", length = 50)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    @Column(name = "FirstName", length = 50)
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Column(name = "Password", nullable = false, length = 200)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "Birthday", nullable = true)
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Column(name = "Sex", length = 1)
    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    @Column(name = "Phone", length = 30)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Column(name = "Address", length = 64)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "Remark", length = 128)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreateTime() {
        return createTime;
    }

    @Column(name = "CreateTime", nullable = false)
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Column(name = "Status", length = 1, nullable = false,columnDefinition="INT default 0")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @OneToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY, targetEntity = Feedback.class, mappedBy = "users")
    public Set<Feedback> getFeedbacks() {
        return feedbacks;
    }

    public void setFeedbacks(Set<Feedback> feedbacks) {
        this.feedbacks = feedbacks;
    }

    @OneToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY, targetEntity = UserMember.class, mappedBy = "users")
    public Set<UserMember> getUserMembers() {
        return userMembers;
    }

    public void setUserMembers(Set<UserMember> userMembers) {
        this.userMembers = userMembers;
    }

    @OneToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY, targetEntity = OperationRecord.class, mappedBy = "users")
    public Set<OperationRecord> getOperationRecords() {
        return operationRecords;
    }

    public void setOperationRecords(Set<OperationRecord> operationRecords) {
        this.operationRecords = operationRecords;
    }
}
