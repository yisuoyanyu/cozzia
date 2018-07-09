package easepal.test;

import easepal.service.IRepairService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.UUID;

public class TestHibernate {

	@Test
	public void test() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[] { "classpath:spring.xml", "classpath:spring-hibernate.xml" });
		IRepairService service = (IRepairService) ac.getBean("repairService");
        service.repair();
	}

}
