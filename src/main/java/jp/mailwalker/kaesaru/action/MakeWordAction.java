package jp.mailwalker.kaesaru.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import jp.mailwalker.kaesaru.form.MakeWordForm;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

public class MakeWordAction {

	@ActionForm
	@Resource
	protected MakeWordForm makeWordForm;
	
	@Resource
	protected HttpServletRequest request;

	String[] words = {"a","i","u","e","o","ka","ki","ku","ke","ko",
			"sa","shi","su","se","so","ta","chi","tsu","te","to",
				"na","ni","nu","ne","no","ha","hi","fu","he","ho",
		"ma","mi","mu","me","mo","ya","yu","yo","wa",
			"ra","ri","ru","re","ro","ga","gi","gu","ge","go",
				"za","ji","zu","ze","zo","da","di","du","de","do",
					"ba","bi","bu","be","bo","pa","pi","pu","pe","po",
						"ltsu","lya","lyu","lyo","nn"
		};
	
	@Execute(validator = false)
	public String index() {
		request.getSession().removeAttribute("word1");
		request.getSession().removeAttribute("word2");
		request.getSession().removeAttribute("word3");
		request.getSession().removeAttribute("word4");
		request.getSession().removeAttribute("word5");
		request.getSession().removeAttribute("word6");

		return "index.jsp";
	}
	
	@Execute(validator = true, input = "index.jsp")
	public String makeName1() {
		request.getSession().removeAttribute("word1");
		request.getSession().removeAttribute("word2");
		request.getSession().removeAttribute("word3");
		request.getSession().removeAttribute("word4");
		request.getSession().removeAttribute("word5");
		request.getSession().removeAttribute("word6");
		
		String objectName = makeWordForm.objectname;
		Integer objectNameCount = Integer.parseInt(objectName);
		// 「"ltsu","lya","lyu","lyo","nn"」を除くため"-5"を実施
		int randomFirst = (int) (1 + Math.floor(Math.random() * (words.length - 5)));

		for (int i = 2; i <= objectNameCount; i++) {
			int random = (int) (1 + Math.floor(Math.random() * (words.length)));
			request.getSession().setAttribute("word" + i, words[random-1]);
		}

		// wordは「0」からカウントするため
		request.getSession().setAttribute("word1", words[randomFirst-1]);
		return "index.jsp";
	}
}