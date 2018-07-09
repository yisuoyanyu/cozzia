package easepal.model.base;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "PUBLIC_ARTICLES", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Articles implements Serializable {
    private Integer articleId;
    private Integer moduleId;

    private String cateId;
    private String title;
    private String content;
    private String filterKey;
    private String imageUrl;

    private Date pubDate;

    private Integer orders;
    private Integer status;

    private Date createTime;

    private Modules modules;
    private Category category;

    @Id
    @Column(name = "ArticleId", unique = true, nullable = false, length = 4)
    private Integer getArticleId(){return articleId;}

    private void setArticleId(Integer articleId){this.articleId = articleId;}

    @Column(name = "ModuleId", length = 4)
    private Integer getModuleId(){return moduleId;}

    private void setModuleId(Integer moduleId){this.moduleId = moduleId;}

    @Column(name = "CateId", length = 32)
    private String getCatId(){return cateId;}

    private void setCatId(String cateId){this.cateId = cateId;}

    @Column(name = "Title", length = 100)
    private String getTitle(){return title;}

    private void setTitle(String title){this.title = title;}

    @Column(name = "Conten", nullable = false)
    private String getContent(){return content;}

    private void setContent(String content){this.content = content;}

    @Column(name = "FilterKey",length = 50)
    private String getFilterKey(){return filterKey;}

    private void setFilterKey(String filterKey){this.filterKey = filterKey;}

    @Column(name = "ImageUrl", length = 200)
    private String getImageUrl(){return imageUrl;}

    private void setImageUrl(String imageUrl){this.imageUrl = imageUrl;}

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "PubDate", length = 7)
    private Date getPubDate(){return pubDate;}

    private void  setPubDate(Date pubDate){this.pubDate = pubDate;}

    @Column(name = "Orders", length = 4)
    private Integer getOrders(){return orders;}

    private void setOrders(Integer orders){this.orders = orders;}

    @Column(name = "Status", nullable = false, length = 1)
    private Integer getStatus(){return status;}

    private void setStatus(Integer status){this.status = status;}

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CreateTime", length = 10)
    private Date getCreateTime(){return createTime;}

    private void setCreateTime(Date createTime){this.createTime = createTime;}

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="ModuleId",insertable = false, updatable = false)
    public Modules getModules() {
        return modules;
    }

    public void setModules(Modules modules) {
        this.modules = modules;
    }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="CateId",insertable = false, updatable = false)
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
