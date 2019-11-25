package com.im.web;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.dubbo.config.annotation.Reference;
import com.im.pojo.Invitation;
import com.im.service.InvitationService;

@Controller
public class InvitationController {

	@Reference
	private InvitationService invitationService;

	Logger log = Logger.getLogger(InvitationController.class);

	// 进入首页
	@RequestMapping("/")
	public String index() {
		System.out.println("index...");
		return "forward:/index.html";
	}

	// 查询所有的帖子
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("list...");
		List<Invitation> list = invitationService.find();
		model.addAttribute("list", list);
		System.out.println(list.size());
		for (Invitation invitation : list) {
			System.out.println(invitation.getCreatedate());
		}
		return "list";
	}

	@RequestMapping("/add")
	public String add() {
		return "add";
	}

	// 新增帖子
	@RequestMapping("/addSave")
	public String addSave(Invitation invitation) {
		log.debug("invitation.title:" + invitation.getTitle());
		boolean flag = invitationService.insert(invitation);
		log.debug("flag:" + flag);
		return "redirect:list.action";
	}

	// 批量删除
	@RequestMapping("/delete")
	public String delete(int[] ids) {
		boolean flag = invitationService.delete(ids);
		log.debug("flag:" + flag);
		return "redirect:list.action";
	}

	@RequestMapping("/update")
	public String update(int id, Model model) {
		Invitation invitation = invitationService.find(id);
		model.addAttribute("invitation", invitation);
		return "update";
	}

	// 更新
	@RequestMapping("/updateSave")
	public String updateSave(Invitation invitation) {
		boolean flag = invitationService.update(invitation);
		log.debug("flag:" + flag);
		return "redirect:list.action";
	}

	// 查询单个
	@RequestMapping("/findById")
	public String findById(int id, Model model) {
		Invitation invitation = invitationService.find(id);
		model.addAttribute("invitation", invitation);
		return "info";
	}
}
