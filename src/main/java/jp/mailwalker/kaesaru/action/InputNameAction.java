package jp.mailwalker.kaesaru.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import jp.mailwalker.kaesaru.form.InputNameForm;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.data.general.DefaultPieDataset;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;
import org.seasar.struts.util.ServletContextUtil;

public class InputNameAction {

	@ActionForm
	@Resource
	protected InputNameForm inputNameForm;

	@Resource
	protected HttpServletRequest request;
	
	@Execute(validator = false)
	public String index() {
		request.getSession().removeAttribute("username");
		request.getSession().removeAttribute("displayGraph");
		request.getSession().removeAttribute("romaName");
		request.getSession().removeAttribute("romaFace");
		request.getSession().removeAttribute("message");
		return "input.jsp";
	}
	
	@Execute(validator = true, input = "input.jsp")
	public String checkResult() throws IOException {
		int userBaseNumber = inputNameForm.username.hashCode();
		Integer userAbsNumber = Math.abs(userBaseNumber);
		String userBaseStringNumber = userAbsNumber.toString();
		String userNumber;

		// userNumberは必ず10桁以上にする
		if (userBaseStringNumber.length() < 10) {
			userNumber = userBaseStringNumber + "19770827";
		} else {
			userNumber = userBaseStringNumber;
		}

		int number1 = Integer.parseInt(userNumber.substring(0,2));
		int number2 = Integer.parseInt(userNumber.substring(1,3));
		int number3 = Integer.parseInt(userNumber.substring(2,4));
		int number4 = Integer.parseInt(userNumber.substring(3,5));
		int number5 = Integer.parseInt(userNumber.substring(4,6));
		int number6 = Integer.parseInt(userNumber.substring(5,7));

		// 日本語が文字化けしないようにするために設定
		ChartFactory.setChartTheme(StandardChartTheme.createLegacyTheme());
		// Graph表示データ
		DefaultPieDataset data = new DefaultPieDataset();
		data.setValue("カエサル", number1);
		data.setValue("ネロ", number2);
		data.setValue("カリグラ", number3);
		data.setValue("ティベリウス", number4);
		data.setValue("グラックス兄弟", number5);
		data.setValue("ポンペイウス", number6);
		
		// 円グラフを作成する
		JFreeChart chart = ChartFactory.createPieChart3D("才能活かし度チェック", data, true, true, true);
		// グラフを画像ファイルとして保存する
		BufferedImage image = chart.createBufferedImage(800, 400);
		ServletContext app = ServletContextUtil.getServletContext();
		String graphPath = app.getRealPath("/graphData/" + "graph.png");
		String displayGraph = "/kaesaru/graphData/" + "graph.png";
		ImageIO.write(image, "PNG", new File(graphPath));

		
		// 最大値を求める
		int[] numbers = {number1, number2, number3, number4, number5, number6};
		int max = numbers[0];
		for (int i = 1; i < numbers.length; i++){
			if (numbers[i] > max)
				max = numbers[i];
		}

		// 才能活かし度
		int persentage = (int)((double)number1 / (number1 + number2 + number3 + number4 + number5 + number6) * 100);
		
		if (max == number1) {
			String romaFace = "/kaesaru/images/" + "kaesaru.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "ガイウス・ユリウス・カエサル (カエサル)");
			request.getSession().setAttribute("message", "そこそこ才能が活かされてます。でも、まだまだだぜ！");
		}
		if (max == number2) {
			String romaFace = "/kaesaru/images/" + "nero.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "ネロ・クラウディウス・カエサル・アウグストゥス・ゲルマニクス (ネロ)");
			request.getSession().setAttribute("message", "目立とうとして、失敗する傾向があります。気をつけようぜ！");
		}
		if (max == number3) {
			String romaFace = "/kaesaru/images/" + "karigura.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "ガイウス・ユリウス・カエサル・アウグストゥス・ゲルマニクス (カリグラ)");
			request.getSession().setAttribute("message", "すぐ天狗になってしまう傾向があります。気をつけようぜ！");
		}
		if (max == number4) {
			String romaFace = "/kaesaru/images/" + "thiberiusu.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "ティベリウス・ユリウス・カエサル (ティベリウス)");
			request.getSession().setAttribute("message", "引きこもってしまう傾向があります。気をつけようぜ！");
		}
		if (max == number5) {
			String romaFace = "/kaesaru/images/" + "gurakkusu.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "ティベリウス・センプロニウス・グラックス (グラックス)");
			request.getSession().setAttribute("message", "面倒なことに巻き込めれる傾向があります。気をつけようぜ！");
		}
		if (max == number6) {
			String romaFace = "/kaesaru/images/" + "poipeiusu.png";
			request.getSession().setAttribute("romaFace", romaFace);
			request.getSession().setAttribute("romaName", "グナエウス・ポンペイウス・マグヌス (ポンペイウス)");
			request.getSession().setAttribute("message", "異性に溺れてしまう傾向があります。気をつけようぜ！");
		}
		request.getSession().setAttribute("username", inputNameForm.username);
		request.getSession().setAttribute("displayGraph", displayGraph);
		request.getSession().setAttribute("persentage", persentage);
		return "input.jsp";
	}	
}