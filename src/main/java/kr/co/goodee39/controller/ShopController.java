package kr.co.goodee39.controller;

import java.text.DecimalFormat;

import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.goodee39.service.ShopService;
import kr.co.goodee39.vo.CartListVO;
import kr.co.goodee39.vo.CartVO;
import kr.co.goodee39.vo.GoodsViewVO;
import kr.co.goodee39.vo.MemberVO;
import kr.co.goodee39.vo.OrderDetailVO;
import kr.co.goodee39.vo.OrderListVO;
import kr.co.goodee39.vo.OrderVO;
import kr.co.goodee39.vo.ReplyListVO;
import kr.co.goodee39.vo.ReplyVO;


@Controller
@RequestMapping("/shop")
public class ShopController {

	@Inject
	ShopService service;
				
	// 카테고리별 상품 리스트
	@GetMapping("/list")
	public void getList(@RequestParam("c") int cateCode,
						@RequestParam("l") int level, Model model) throws Exception {
		
		List<GoodsViewVO> list = null;
		list = service.list(cateCode, level);
	
		model.addAttribute("list", list);
		
	}
	
	// 상품 조회
	@GetMapping("/view")
	public void getView(@RequestParam("n") int gdsNum, Model model) throws Exception {
		
		GoodsViewVO view = service.goodsView(gdsNum);
		model.addAttribute("view", view);
		
		/*
		List<ReplyListVO> reply = service.replyList(gdsNum);
		model.addAttribute("reply", reply);
		*/
		
	}

	
	/*
	 * // 상품 조회 - 소감(댓글) 작성
	 * 
	 * @PostMapping("/view") public String registReply(ReplyVO reply, HttpSession
	 * session) throws Exception {
	 * 
	 * 
	 * MemberVO member = (MemberVO)session.getAttribute("member");
	 * reply.setUserId(member.getUserId());
	 * 
	 * service.registReply(reply);
	 * 
	 * return "redirect:/shop/view?n=" + reply.getGdsNum(); }
	 */
	
	
	// 상품 소감(댓글) 작성
	@ResponseBody
	@PostMapping("/view/registReply")
	public void registReply(ReplyVO reply, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		reply.setUserId(member.getUserId());
		
		service.registReply(reply);
	}	
	
	// 상품 소감(댓글) 목록
	@ResponseBody
	@GetMapping("/view/replyList")
	public List<ReplyListVO> getReplyList(@RequestParam("n") int gdsNum) throws Exception {
				
		List<ReplyListVO> reply = service.replyList(gdsNum);
		
		return reply;
	}
	
	// 상품 소감(댓글) 삭제
	@ResponseBody
	@PostMapping("/view/deleteReply")
	public int getReplyList(ReplyVO reply,  HttpSession session) throws Exception {
		
		// 정상작동 여부를 확인하기 위한 변수
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");  // 현재 로그인한  member 세션을 가져옴
		String userId = service.idCheck(reply.getRepNum());  // 소감(댓글)을 작성한 사용자의 아이디를 가져옴
				
		// 로그인한 아이디와, 소감을 작성한 아이디를 비교
		if(member.getUserId().equals(userId)) {
			
			// 로그인한 아이디가 작성한 아이디와 같다면
			
			reply.setUserId(member.getUserId());  // reply에 userId 저장
			service.deleteReply(reply);  // 서비스의 deleteReply 메서드 실행
			
			// 결과값 변경
			result = 1;
		}
		
		// 정상적으로 실행되면 소감 삭제가 진행되고, result값은 1이지만
		// 비정상적으로 실행되면 소감 삭제가 안되고, result값이 0
		return result;	
	}
	
	// 상품 소감(댓글) 수정
	@ResponseBody
	@PostMapping("/view/modifyReply")
	public int modifyReply(ReplyVO reply, HttpSession session) throws Exception {
		
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = service.idCheck(reply.getRepNum());
		
		if(member.getUserId().equals(userId)) {
			
			reply.setUserId(member.getUserId());
			service.modifyReply(reply);
			result = 1;
		}
		
		return result;
		
	}	
		
	// 카트 담기
	@ResponseBody
	@PostMapping("/view/addCart")
	public int addCart(CartListVO cart, HttpSession session) throws Exception {
		
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			cart.setUserId(member.getUserId());
			service.addCart(cart);
			result = 1;
		}
		
		return result;
	}
		
	// 카트 목록
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public void getCartList(HttpSession session, Model model) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		List<CartListVO> cartList = service.cartList(userId);
		
		model.addAttribute("cartList", cartList);
	}
	
	
	// 카트 삭제
	@ResponseBody
	@PostMapping("/deleteCart")
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO cart) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		int result = 0;
		int cartNum = 0;		
		
		// 로그인 여부 구분
		if(member != null) {
			cart.setUserId(userId);
			
			for(String i : chArr) {  // 에이젝스에서 받은 chArr의 갯수만큼 반복
				cartNum = Integer.parseInt(i);  // i번째 데이터를 cartNum에 저장
				cart.setCartNum(cartNum);
				service.deleteCart(cart);
			}			
			result = 1;
		}		
		return result;		
	}
		
	// 주문
	@PostMapping("/cartList")
	public String order(HttpSession session, OrderVO order, OrderDetailVO orderDetail) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");		
		String userId = member.getUserId();
		
		// 캘린더 호출
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);  // 연도 추출
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);  // 월 추출
		String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));  // 일 추출
		String subNum = "";  // 랜덤 숫자를 저장할 문자열 변수
		
		for(int i = 1; i <= 6; i ++) {  // 6회 반복
			subNum += (int)(Math.random() * 10);  // 0~9까지의 숫자를 생성하여 subNum에 저장
		}
		
		String orderId = ymd + "_" + subNum;  // [연월일]_[랜덤숫자] 로 구성된 문자
		
		order.setOrderId(orderId);
		order.setUserId(userId);
			
		service.orderInfo(order);
		
		orderDetail.setOrderId(orderId);			
		service.orderInfo_Details(orderDetail);
		
		// 주문 테이블, 주문 상세 테이블에 데이터를 전송하고, 카트 비우기
		service.cartAllDelete(userId);
		
		return "redirect:/shop/orderList";		
	}
	
	// 주문 목록
	@GetMapping("/orderList")
	public void getOrderList(HttpSession session, OrderVO order, Model model) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		order.setUserId(userId);
		
		List<OrderVO> orderList = service.orderList(order);
		
		model.addAttribute("orderList", orderList);
	}
	 
	// 주문 상세 목록
	@GetMapping("/orderView")
	public void getOrderList(HttpSession session,
							@RequestParam("n") String orderId,
							OrderVO order, Model model) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
		
		order.setUserId(userId);
		order.setOrderId(orderId);
		
		List<OrderListVO> orderView = service.orderView(order);
		
		model.addAttribute("orderView", orderView);
	}
	
	
	
	
	
	

} 