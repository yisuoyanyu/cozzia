package easepal.model.store;

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
@Table(name = "GOODS_BRANDS", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class GoodsBrands implements Serializable {
    private Integer brandId;

    private String brandName;
    private String brandLogo;

    private Integer orders;
    private Integer status;

    private String remark;
    private Date createTime;

    private Set<Goods> goodses = new HashSet<Goods>(0);

    @Id
    @Column(name = "BrandId", unique = true, nullable = false, length = 4)
    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }
    @Column(name = "BrandName", nullable = false, length = 32)
    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }
    @Column(name = "BrandLogo",  length = 200)
    public String getBrandLogo() {
        return brandLogo;
    }

    public void setBrandLogo(String brandLogo) {
        this.brandLogo = brandLogo;
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
    @Column(name = "Remark", length = 200)
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


    @OneToMany(cascade = { CascadeType.ALL}, fetch = FetchType.LAZY ,targetEntity = Goods.class,mappedBy="goodsBrands")
    public Set<Goods> getGoodses() {
        return goodses;
    }

    public void setGoodses(Set<Goods> goodses) {
        this.goodses = goodses;
    }
}
