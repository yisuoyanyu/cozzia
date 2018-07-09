package easepal.model.business;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "OPERATION_RECORD", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class OperationRecord implements Serializable {
    private Long recordId;

    private String userId;
    private String memberId;
    private String actionId;

    private Integer times;
    private Integer operateTime;
    private Integer duration;

    private String source;
    private String softVersion;

    private Date createTime;

    private Users users;
    private UserMember userMember;

    @Id
    @Column(name = "Id", unique = true, nullable = false, length = 32)
    public Long getRecordId() {
        return recordId;
    }

    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }
    @Column(name = "UserId", length = 32)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    @Column(name = "MemberId", length = 32)
    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }
    @Column(name = "ActionId", length = 32, nullable = false)
    public String getActionId() {
        return actionId;
    }

    public void setActionId(String actionId) {
        this.actionId = actionId;
    }
    @Column(name = "Times", length = 4)
    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }
    @Column(name = "OperateTime", length = 10)
    public Integer getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Integer operateTime) {
        this.operateTime = operateTime;
    }
    @Column(name = "Duration", length = 4)
    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }
    @Column(name = "Source", length = 20)
    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
    @Column(name = "SoftVersion", length = 20)
    public String getSoftVersion() {
        return softVersion;
    }

    public void setSoftVersion(String softVersion) {
        this.softVersion = softVersion;
    }
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CreateTime", length = 7)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="UserId",insertable = false, updatable = false)
    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="MemberId",insertable = false, updatable = false)
    public UserMember getUserMember() {
        return userMember;
    }

    public void setUserMember(UserMember userMember) {
        this.userMember = userMember;
    }
}
