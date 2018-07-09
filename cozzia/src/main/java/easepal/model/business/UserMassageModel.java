package easepal.model.business;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "USER_MEMEBER_MassageModel",schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class UserMassageModel implements Serializable {
    private String id;
    private String memberId;
    private String modelId;

    private UserMember userMember;
    private MassageModel massageModel;

    @Id
    @Column(name = "Id", unique = true, nullable = false, length = 32)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    @Column(name = "MemberId", nullable = false, length = 32)
    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }
    @Column(name = "ModelId", nullable = false, length = 32)
    public String getModelId() {
        return modelId;
    }

    public void setModelId(String modelId) {
        this.modelId = modelId;
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

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="ModelId",insertable = false, updatable = false)
    public MassageModel getMassageModel() {
        return massageModel;
    }

    public void setMassageModel(MassageModel massageModel) {
        this.massageModel = massageModel;
    }
}
