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
@Table(name = "PUBLIC_APP_VERSIONS",schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class AppVersions implements Serializable {

    private String appId;
    private String appName;
    private String appKey;
    private String versionCode;
    private String versionName;
    private String downUrl;
    private String outLinkUrl;

    private Date updateDate;
    private Date createTime;

    private String remark;

    @Id
    @Column(name = "AppId", unique = true, nullable = false, length = 32)
    public  String getAppId(){return appId;}

    public  void setAppId(String appId){this.appId = appId;}

    @Column(name = "AppName", nullable = false, length = 32)
    public  String getAppName(){return  appName;}

    public  void  setAppName(String appName){this.appName = appName;}

    @Column(name = "AppKey", length = 32)
    public String getAppKey(){return appKey;}

    public void  setAppKey(String appKey){this.appKey = appKey;}

    @Column(name = "VersionCode", length = 20)
    public  String getVersionCode(){return versionCode;}

    public void  setVersionCode(String versionCode){this.versionCode = versionCode;}

    @Column(name = "VersionName", length = 20)
    public String getVersionName(){return versionName;}

    public void setVersionName(String versionName) {this.versionName = versionName;}

    @Column(name = "DownUrl", length = 255)
    public  String getDownUrl(){return downUrl;}

    public  void setDownUrl(String downUrl){this.downUrl = downUrl;}

    @Column(name = "OutLinkUrl",length = 255)
    public  String getOutLinkUrl(){return outLinkUrl;}

    public  void  setOutLinkUrl(String outLinkUrl){this.outLinkUrl = outLinkUrl;}

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "UpdateDate",length = 7)
    public Date getUpdateDate(){return updateDate;}

    public void setUpdateDate(Date updateDate){this.updateDate = updateDate;}

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CreateTime", length = 7)
    public Date getCreateTime(){return createTime;}

    public void setCreateTime(Date createTime){this.createTime = createTime;}

    @Column(name = "Remark",length = 200)
    public String getRemark(){return remark;}

    public void setRemark(String remark){this.remark = remark;}
}
