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
@Table(name = "PUBLIC_OPERATELOG", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Operatelog implements Serializable {
    private Integer logId;

    private String adminId;

    private Integer moduleId;

    private String actionType;
    private String remark;

    private Date operateTime;



    @Id
    @Column(name = "LogId", unique = true, nullable = false, length = 4)
    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }
    @Column(name = "AdminId", nullable = false, length = 32,insertable = false,updatable = false)
    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }
    @Column(name = "ModuleId", nullable = false, length = 4)
    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }
    @Column(name = "ActionType", nullable = false, length = 8)
    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }
    @Column(name = "AdminId",  length = 128)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "OperateTime", length = 24)
    public Date getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }


}
