package easepal.model.business;

import easepal.model.base.Category;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "MASSAGE_MODEL", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class MassageModel implements Serializable {
    private String modelId;

    private String modelName;

    private Integer modelKey;

    private String knowledge;

    private Integer cateId;

    private String remark;

    private Integer orders;

    private Boolean isDefault;

    private Integer status;


    @Id
    @Column(name = "Id", unique = true, nullable = false, length = 36)
    public String getModelId() {
        return modelId;
    }

    public void setModelId(String modelId) {
        this.modelId = modelId;
    }

    @Column(name = "ModelName", nullable = false, length = 36)
    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    @Column(name = "ModelKey", nullable = false)
    public Integer getModelKey() {
        return modelKey;
    }

    public void setModelKey(Integer modelKey) {
        this.modelKey = modelKey;
    }

    @Column(name = "Knowledge",  length = 1000)
    public String getKnowledge() {
        return knowledge;
    }

    public void setKnowledge(String knowledge) {
        this.knowledge = knowledge;
    }

    @Column(name = "CateId", length = 4)
    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    @Column(name = "Remark", length = 200)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Column(name = "Orders", length = 4)
    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    @Column(name = "IsDefault", length = 1)
    public Boolean getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    @Column(name = "Status", length = 1, nullable = false)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
