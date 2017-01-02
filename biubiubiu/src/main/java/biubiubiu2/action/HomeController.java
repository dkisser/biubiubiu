package biubiubiu2.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import biubiubiu2.db.pojo.Editors;
import biubiubiu2.service.EditorsService;

/** * @author  wenchen 
 * @date 创建时间：2016年8月17日 下午8:45:03 
 * @version 1.0 
 * @parameter 
 * 主页的控制器
 * */
@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private EditorsService editorsService;
	
	@RequestMapping("home")
	public String home () {
		return "home/home";
	}
	
	@RequestMapping("editorsList")
	public String editorsList (Model model) throws Exception {
		List<Editors> editorsList = editorsService.getAllEditors();
		model.addAttribute("editorsList", editorsList);
		return "editors/editors";
	}
}
