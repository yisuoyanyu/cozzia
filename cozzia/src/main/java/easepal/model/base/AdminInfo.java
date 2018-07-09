package easepal.model.base;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *  管理员模型
 * @author: 郭清泉
 * @date: 2015/3/23
 * @version: v1.0.
 * @description:
 */
@Entity
@Table(name = "PUBLIC_ADMIN", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class AdminInfo implements Serializable {


    private String id;
    private String loginName;
    private String password;
    private String fullName;

    private String email;
    private String remark;

    /**
     * 状态
     */
    private Short status;

    private Date lastLoginTime;

    private String ip;

    /**
     * 创建时间
     */
    private Date createTime;

    private Set<Role> roles = new HashSet<Role>(0);

    @Id
    @Column(name = "ID", unique = true, nullable = false, length = 36)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "LoginName", nullable = false, length = 100)
    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }



    @Column(name = "Password", nullable = false, length = 100)

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(length = 100)
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    @Column(name = "Email", length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "Remark", length = 200)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Column(name = "Status")
    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "LastLoginTime", length = 7)
    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CreateTime", length = 7)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "PUBLIC_ADMIN_ROLE", schema = "", joinColumns = { @JoinColumn(name = "AdminID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "RoleID", nullable = false, updatable = false) })
    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public AdminInfo(String id, String loginName, String password, String fullName, String email, String remark, Short status, Date lastLoginTime, String ip, Date createTime, Set<Role> roles) {
        this.id = id;
        this.loginName = loginName;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.remark = remark;
        this.status = status;
        this.lastLoginTime = lastLoginTime;
        this.ip = ip;
        this.createTime = createTime;
        this.roles = roles;
    }

    public AdminInfo() {
    }

    public AdminInfo(String id, String loginName, String password, String fullName, String email, Date createTime) {
        this.id = id;
        this.loginName = loginName;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.createTime = createTime;
    }

    public AdminInfo( String loginName, String password) {
        this.loginName = loginName;
        this.password = password;
    }

    public AdminInfo(String loginName) {
        this.loginName = loginName;
    }

}
