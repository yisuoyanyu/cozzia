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
@Table(name = "USER_MEMEBER", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class UserMember implements Serializable {
    private String memberId;
    private String userId;
    private String memberName;
    private String faceUrl;
    private String realName;

    private Integer ageArea;
    private Integer sex;

    private Float height;
    private Float weight;

    private String phone;

    private Integer isEnable;
    private Integer orders;

    private Date createTime;

    private Users users;

    private Set<UserMassageModel> userMassageModels = new HashSet<UserMassageModel>(0);


    @Id
    @Column(name = "MemberId", unique = true, nullable = false, length = 32)
    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }
    @Column(name = "UserId", nullable = false, length = 32)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    @Column(name = "MemberName", nullable = false, length = 50)
    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }
    @Column(name = "FaceUrl", length = 200)
    public String getFaceUrl() {
        return faceUrl;
    }

    public void setFaceUrl(String faceUrl) {
        this.faceUrl = faceUrl;
    }
    @Column(name = "RealName", length = 32)
    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }
    @Column(name = "AgeArea", length = 2)
    public Integer getAgeArea() {
        return ageArea;
    }

    public void setAgeArea(Integer ageArea) {
        this.ageArea = ageArea;
    }
    @Column(name = "Sex", length = 1)
    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }
    @Column(name = "Height", length = 4)
    public Float getHeight() {
        return height;
    }

    public void setHeight(Float height) {
        this.height = height;
    }
    @Column(name = "Weight", length = 4)
    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }
    @Column(name = "Phone", length = 30)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Column(name = "IsEnable", length = 1)
    public Integer getIsEnable() {
        return isEnable;
    }

    public void setIsEnable(Integer isEnable) {
        this.isEnable = isEnable;
    }
    @Column(name = "Orders")
    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
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

    @OneToMany(cascade = { CascadeType.ALL}, fetch = FetchType.LAZY ,targetEntity = UserMassageModel.class,mappedBy="userMember")
    public Set<UserMassageModel> getUserMassageModels() {
        return userMassageModels;
    }

    public void setUserMassageModels(Set<UserMassageModel> userMassageModels) {
        this.userMassageModels = userMassageModels;
    }

}
