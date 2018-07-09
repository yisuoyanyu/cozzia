package easepal.model.business;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2015/3/27.
 */
@Entity
@Table(name = "PUBLIC_FEEDBACK",schema = "")
@DynamicInsert(true)
@DynamicUpdate(true)
public class Feedback implements Serializable {
    private int id;

    private String userId;
    private String title;
    private String content;
    private String email;
    private String source;

    private Integer status;

    private Users users;
    @Id
    @Column(name = "Id", unique = true, nullable = false, length = 4)
    private int getId(){return id;}

    private void setId(int id){this.id = id;}

    @Column(name = "UserId", nullable = false, length = 32)
    private String getUserId(){return userId;}

    private void setUserId(String userId){this.userId = userId;}

    @Column(name = "Title")
    private String getTitle(){return title;}

    private void setTitle(String title){this.title = title;}

    @Column(name = "Content", nullable = false, length = 200)
    private String getContent(){return content;}

    private void setContent(String content){this.content = content;}

    @Column(name = "Email", nullable = false, length = 100)
    private String getEmail(){return email;}

    private void setEmail(String email){this.email = email;}

    @Column(name = "Source", length = 10)
    private String getSource(){return source;}

    private void setSource(String source){this.source = source;}

    @Column(name = "Status", nullable = false, length = 1)
    private Integer getStatus(){return status;}

    private void setStatus(Integer status){this.status = status;}

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, optional = false)
    // JoinColumn表示外键的列
    @JoinColumn(name="UserId",insertable = false, updatable = false)
    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
}
