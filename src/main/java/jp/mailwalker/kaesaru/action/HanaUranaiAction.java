package jp.mailwalker.kaesaru.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import jp.mailwalker.kaesaru.form.HanaUranaiForm;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

public class HanaUranaiAction {

	@ActionForm
	@Resource
	protected HanaUranaiForm hanaUranaiForm;
	
	@Resource
	protected HttpServletRequest request;
	
	@Execute(validator = false)
	public String index() {
		request.getSession().invalidate();
		return "input.jsp";
	}

	@Execute(validator = true, input = "input.jsp")
	public String uranai1() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		return "uranai1.jsp";
	}
	
	@Execute(validator = false)
	public String uranai2() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		return "uranai2.jsp";
	}
	
	@Execute(validator = false)
	public String uranai3() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		return "uranai3.jsp";
	}
	
	@Execute(validator = false)
	public String uranai4() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		return "uranai4.jsp";
	}

	@Execute(validator = false)
	public String uranai5() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		return "uranai5.jsp";
	}

	@Execute(validator = false)
	public String uranaiResult() {
		request.getSession().setAttribute("username", hanaUranaiForm.username);
		request.getSession().setAttribute("girlfriend", hanaUranaiForm.girlfriend);
		int randomFirst = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst >= 80) {
			request.getSession().setAttribute("item1Message", "絶好調！！");
			request.getSession().setAttribute("item1Point", randomFirst);
		} else if (randomFirst >= 60) {
			request.getSession().setAttribute("item1Message", "好調！");
			request.getSession().setAttribute("item1Point", randomFirst);
		} else if (randomFirst >= 40) {
			request.getSession().setAttribute("item1Message", "普通");
			request.getSession().setAttribute("item1Point", randomFirst);
		} else if (randomFirst >= 20) {
			request.getSession().setAttribute("item1Message", "不調..");
			request.getSession().setAttribute("item1Point", randomFirst);
		} else {
			request.getSession().setAttribute("item1Message", "絶不調...");
			request.getSession().setAttribute("item1Point", randomFirst);
		}
		int randomFirst2 = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst2 >= 80) {
			request.getSession().setAttribute("item2Message", "絶好調！！");
			request.getSession().setAttribute("item2Point", randomFirst2);
		} else if (randomFirst2 >= 60) {
			request.getSession().setAttribute("item2Message", "好調！");
			request.getSession().setAttribute("item2Point", randomFirst2);
		} else if (randomFirst2 >= 40) {
			request.getSession().setAttribute("item2Message", "普通");
			request.getSession().setAttribute("item2Point", randomFirst2);
		} else if (randomFirst2 >= 20) {
			request.getSession().setAttribute("item2Message", "不調..");
			request.getSession().setAttribute("item2Point", randomFirst2);
		} else {
			request.getSession().setAttribute("item2Message", "絶不調...");
			request.getSession().setAttribute("item2Point", randomFirst2);
		}
		int randomFirst3 = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst3 >= 80) {
			request.getSession().setAttribute("item3Message", "絶好調！！");
			request.getSession().setAttribute("item3Point", randomFirst3);
		} else if (randomFirst3 >= 60) {
			request.getSession().setAttribute("item3Message", "好調！");
			request.getSession().setAttribute("item3Point", randomFirst3);
		} else if (randomFirst3 >= 40) {
			request.getSession().setAttribute("item3Message", "普通");
			request.getSession().setAttribute("item3Point", randomFirst3);
		} else if (randomFirst3 >= 20) {
			request.getSession().setAttribute("item3Message", "不調..");
			request.getSession().setAttribute("item3Point", randomFirst3);
		} else {
			request.getSession().setAttribute("item3Message", "絶不調...");
			request.getSession().setAttribute("item3Point", randomFirst3);
		}
		int randomFirst4 = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst4 >= 80) {
			request.getSession().setAttribute("item4Message", "絶好調！！");
			request.getSession().setAttribute("item4Point", randomFirst4);
		} else if (randomFirst4 >= 60) {
			request.getSession().setAttribute("item4Message", "好調！");
			request.getSession().setAttribute("item4Point", randomFirst4);
		} else if (randomFirst4 >= 40) {
			request.getSession().setAttribute("item4Message", "普通");
			request.getSession().setAttribute("item4Point", randomFirst4);
		} else if (randomFirst4 >= 20) {
			request.getSession().setAttribute("item4Message", "不調..");
			request.getSession().setAttribute("item4Point", randomFirst4);
		} else {
			request.getSession().setAttribute("item4Message", "絶不調...");
			request.getSession().setAttribute("item4Point", randomFirst4);
		}
		int randomFirst5 = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst5 >= 80) {
			request.getSession().setAttribute("item5Message", "絶好調！！");
			request.getSession().setAttribute("item5Point", randomFirst5);
		} else if (randomFirst5 >= 60) {
			request.getSession().setAttribute("item5Message", "好調！");
			request.getSession().setAttribute("item5Point", randomFirst5);
		} else if (randomFirst5 >= 40) {
			request.getSession().setAttribute("item5Message", "普通");
			request.getSession().setAttribute("item5Point", randomFirst5);
		} else if (randomFirst5 >= 20) {
			request.getSession().setAttribute("item5Message", "不調..");
			request.getSession().setAttribute("item5Point", randomFirst5);
		} else {
			request.getSession().setAttribute("item5Message", "絶不調...");
			request.getSession().setAttribute("item5Point", randomFirst5);
		}
		int randomFirst6 = (int) (1 + Math.floor(Math.random() * 100));
		if (randomFirst6 >= 80) {
			request.getSession().setAttribute("item6Message", "絶好調！！");
			request.getSession().setAttribute("item6Point", randomFirst6);
		} else if (randomFirst6 >= 60) {
			request.getSession().setAttribute("item6Message", "好調！");
			request.getSession().setAttribute("item6Point", randomFirst6);
		} else if (randomFirst6 >= 40) {
			request.getSession().setAttribute("item6Message", "普通");
			request.getSession().setAttribute("item6Point", randomFirst6);
		} else if (randomFirst6 >= 20) {
			request.getSession().setAttribute("item6Message", "不調..");
			request.getSession().setAttribute("item6Point", randomFirst6);
		} else {
			request.getSession().setAttribute("item6Message", "絶不調...");
			request.getSession().setAttribute("item6Point", randomFirst6);
		}
		int randomAll = randomFirst + randomFirst2 + randomFirst3 + randomFirst4 + randomFirst5 + randomFirst6;
		if (randomAll >= 450) {
			request.getSession().setAttribute("itemAllMessage", "大吉");
		} else if (randomAll >= 350) {
			request.getSession().setAttribute("itemAllMessage", "吉");
		} else if (randomAll >= 300) {
			request.getSession().setAttribute("itemAllMessage", "中吉");
		} else if (randomAll >= 200) {
			request.getSession().setAttribute("itemAllMessage", "小吉");
		} else if (randomAll >= 100) {
			request.getSession().setAttribute("itemAllMessage", "凶");
		} else {
			request.getSession().setAttribute("itemAllMessage", "大凶");
		}
			return "displayResult?redirect=true";
	}
	
	@Execute(validator = false)
	public String displayResult() {
		return "result.jsp";
	}
}