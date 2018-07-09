package easepal.model.store;

import easepal.model.base.Category;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "GOODS", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Goods implements Serializable {
    private String goodsId;
    private String goodsName;

    private Integer brandId;
    private Integer cateId;

    private String goodsSN;
    private String imageUrl;
    private String goodsText;

    private Float price;

    private String colors;

    private Integer orders;
    private Integer status;

    private Date createTime;

    private GoodsBrands goodsBrands;
    private Category category;

    @Id
    @Column(name = "GoodsId", unique = true, nullable = false, length = 32)
    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }
    @Column(name = "GoodsName",  nullable = false, length = 64)
    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }
    @Column(name = "BrandId",  length = 4)
    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }
    @Column(name = "CatId",  nullable = false, length = 4)
    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }
    @Column(name = "GoodsSN",  nullable = false, length = 32)
    public String getGoodsSN() {
        return goodsSN;
    }

    public void setGoodsSN(String goodsSN) {
        this.goodsSN = goodsSN;
    }
    @Column(name = "ImageUrl", length = 200)
    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    @Column(name = "GoodsText",  nullable = false, length = 1024)
    public String getGoodsText() {
        return goodsText;
    }

    public void setGoodsText(String goodsText) {
        this.goodsText = goodsText;
    }
    @Column(name = "Price")
    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }
    @Column(name = "Colors",  length = 500)
    public String getColors() {
        return colors;
    }

    public void setColors(String colors) {
        this.colors = colors;
    }
    @Column(name = "Orders",  nullable = false, length = 4)
    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }
    @Column(name = "Status",  nullable = false, length = 1)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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
    @JoinColumn(name="BrandId",insertable = false, updatable = false)
    public GoodsBrands getGoodsBrands() {
        return goodsBrands;
    }

    public void setGoodsBrands(GoodsBrands goodsBrands) {
        this.goodsBrands = goodsBrands;
    }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="CatId",insertable = false, updatable = false)
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
