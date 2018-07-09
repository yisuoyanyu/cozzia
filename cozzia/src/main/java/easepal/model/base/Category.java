package easepal.model.base;

import easepal.model.business.MassageModel;
import easepal.model.store.Goods;
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
@Table(name = "PUBLIC_CATEGORY", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Category implements Serializable {
    private Integer cateId;

    private String cateName;

    private Integer parentId;
    private Integer moduleId;

    private Date createTime;

    private String remark;

    private Integer orders;
    private Integer status;




    @Id
    @Column(name = "CateId", unique = true, nullable = false, length = 4)

    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    @Column(name = "CateName", nullable = false, length = 32)


    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }


    @Column(name = "ParentId", nullable = false, length = 4)

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }


    @Column(name = "ModuleId", nullable = false, length = 4)

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }


    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CreateTime", length = 7)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }



    @Column(name = "Rmark", length = 200)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }



    @Column(name = "Orders", nullable = false, length = 4)
    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }



    @Column(name = "Status", nullable = false, length = 1)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Category() {
    }
}
