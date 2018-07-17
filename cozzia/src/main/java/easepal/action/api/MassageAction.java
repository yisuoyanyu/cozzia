package easepal.action.api;

import com.opensymphony.xwork2.ModelDriven;
import easepal.action.BaseAction;
import easepal.model.business.MassageModel;
import easepal.model.ui.Json;
import easepal.service.IBaseService;
import easepal.service.business.IMassageService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author: 
 * @date: 2015/3/31
 * @version: v1.0.
 * @description:
 */
@Namespace("/api/massage")
@Action
public class MassageAction extends BaseAction<MassageModel>  implements ModelDriven<MassageModel> {

    private MassageModel massageModel = new MassageModel();

    @Autowired
    public void setService(IMassageService service) {
        this.service = service;
    }


    @Override
    public MassageModel getModel() {
        return massageModel;
    }


    /**
     * 获取按摩模式信息
     */
    @Action("list")
    public void list(){

        List<MassageModel> list = service.find();
        Json json = new Json();
        super.writeJson(list);
    }




}
