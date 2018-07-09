package easepal.model.ui;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: 郭清泉
 * @date: 2015/3/28
 * @version: v1.0.
 * @description:
 */
public class Grid {

    private Long total ;
    private Integer pageNum = 1;
    private Integer numPerPage = 10;
    private List rows = new ArrayList();

    public Grid() {

    }

    public Grid(List rows, Long total) {
        this.rows = rows;
        this.total = total;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getNumPerPage() {
        return numPerPage;
    }

    public void setNumPerPage(Integer numPerPage) {
        this.numPerPage = numPerPage;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
