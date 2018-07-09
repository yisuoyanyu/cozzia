package easepal.model.base;

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
@Table(name = "PUBLIC_MODULES", schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Modules implements Serializable {

    private Integer moduleId;

    private String moduleName;
    private String remark;

    private Integer orders;
    private Integer status;


    @Id
    @Column(name = "ModuleId", unique = true, nullable = false, length = 4)
    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }


    @Column(name = "ModuleName", nullable = false, length = 32)
    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
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

    @Column(name = "Status", nullable = false, length = 1)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Modules(Integer moduleId, String moduleName, String remark, Integer orders, Integer status) {
        this.moduleId = moduleId;
        this.moduleName = moduleName;
        this.remark = remark;
        this.orders = orders;
        this.status = status;
    }

    public Modules() {
    }
}
