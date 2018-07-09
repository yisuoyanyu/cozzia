package easepal.action;

import easepal.service.IRepairService;
import org.apache.struts2.convention.annotation.Action;
import org.springframework.beans.factory.annotation.Autowired;

@Action(value = "repairAction")
public class RepairAction extends BaseAction {
	private IRepairService repairService;

	public IRepairService getRepairService() {
		return repairService;
	}

	@Autowired
	public void setRepairService(IRepairService repairService) {
		this.repairService = repairService;
	}

	public void init() {
		repairService.repair();
	}

}
