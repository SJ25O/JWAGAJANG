package review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import goods.dao.GoodsDAO;

public class ReviewDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int md_code = Integer.parseInt(req.getParameter("md_code"));
		int review_code = Integer.parseInt(req.getParameter("review_code"));
		
		// 이 부분 확인
		GoodsDAO gDao = GoodsDAO.getInstance();
		int check = gDao.deleteReview(review_code);
		
		gDao.updateReviewCount(md_code, -1);
		
		req.setAttribute("check", new Integer(check));
		return "/goodsReviewDel.jsp";
	}

}
