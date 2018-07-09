package easepal.model.base;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *  	角色
 * @author: 郭清泉
 * @date: 2015/3/24
 * @version: v1.0.
 * @description:
 */
@Entity
@Table(name = "PUBLIC_ROLE", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Role  implements Serializable {

    private String roleId;
    private String roleName;
    private String remark;

    private Date createTime;

    private Set<AdminInfo> admins = new HashSet<AdminInfo>(0);

    @Id
    @Column(name = "RoleId", unique = true, nullable = false, length = 36)
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Column(name = "RoleName", nullable = false, length = 100)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    @Column(name = "Remark", nullable = false, length = 200)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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
    @JoinTable(name = "PUBLIC_ADMIN_ROLE", schema = "", joinColumns = { @JoinColumn(name = "RoleID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "AdminID", nullable = false, updatable = false) })
    public Set<AdminInfo> getAdmins() {
        return admins;
    }

    public void setAdmins(Set<AdminInfo> admins) {
        this.admins = admins;
    }
}
