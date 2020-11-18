package co.grandcircus.joindemo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@Autowired
	private DepartmentRepository deptrep;
	@Autowired
	private EmployeeRepository emprep;

	
	@GetMapping("/")
	public String index(Model model) {
		List<Department> dreps = deptrep.findAll();
		model.addAttribute("departments",dreps);
		System.out.println(dreps);
		return "index";
	}
	
	@GetMapping("/detail") 
		public String employee(@RequestParam long id, Model model) {
		
			Employee emp = emprep.findById(id).get();
			model.addAttribute("employee", emp);
			return "detail";
	}
	
	@PostMapping("/detail/search") 
	public String search(String lastname, Model model) {
		List<Employee> emps = emprep.findByLastnameContaining(lastname);
		model.addAttribute("emps",emps);
		return "search";
	}
}
