package com.controllers;

import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.apache.jasper.tagplugins.jstl.core.Catch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Dao.ManagerDao;
import com.model.ManagerModel;

@Controller
public class ManagerControllers {
	@Autowired
	ManagerDao md;

	@RequestMapping("/hello")
	public void get() {
		System.out.println("hello pater parkar");
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@RequestMapping("/saveUserInfo")
	public String getInfo(@ModelAttribute("m1") ManagerModel m1) {

		System.out.println("model data : " + m1.toString());

		if (m1.getPassword().equals(m1.getConfirm_password())) {
			md.saveInfo(m1);
			return "redirect:/welcome";
		} else {
			System.out.println("password and confirm password does not match");
			return "register";
		}

	}

	@RequestMapping("/welcome")
	public String two(Model m) {
		List<ManagerModel> l1 = md.getAllInfo();
		m.addAttribute("kk", l1);
		return "welcome";
	}

	@RequestMapping("/deleteData/{id}")
	public String deleteData(@PathVariable int id) {

		md.deleteInfo(id);
		return "redirect:/welcome";
	}

	@RequestMapping("/editdata/{id}")
	public String editData(@PathVariable int id, Model m) {
		System.out.println(id);
		List<ManagerModel> m1 = md.editData(id);
		m.addAttribute("singleRecord", m1);
		return "editPage";
	}
	

	@RequestMapping("/editdata/updateuserinfo/{id}")
	public String updateUserData(@ModelAttribute("m1") ManagerModel m1,@PathVariable int id) {
		System.out.println("model data : " + m1.toString() );

		System.out.println(m1.getPassword().equals(m1.getConfirm_password()));
		if (m1.getPassword().equals(m1.getConfirm_password())) {
			
			md.updateInfo(m1) ;
			return "redirect:/welcome" ;
		}else {
			System.out.println("password and confirm password does not match");
			return "redirect:/welcome" ;
		}

	}
	
	@RequestMapping("/displayData/{id}")
	public String DisplayData(@PathVariable int id ,Model m) {
		System.out.println(id);
		List<ManagerModel> l1 =	md.getDetails(id) ;
		m.addAttribute("singlePersonData" , l1) ;
		return "displayData" ;
	}
	
	
}
