package kr.co.goodee39.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kr.co.goodee39.service.BBSService;
import kr.co.goodee39.vo.BBSVO;
import kr.co.goodee39.vo.FileVO;

@Controller
@RequestMapping("/bbs")
public class BBSController {
	
	@Autowired
	private BBSService service;
	@GetMapping("/bbsmain")
	public String getBBS() {
		
		return "bbs";
	}
	
	@GetMapping("/main")
	// 커맨드BBSVO vo 객체를 사용하지 않아도 됨. 매칭시켜줘야 할 게 없어서. 리스트만 불러오면 되니까. 디폴트 페이지 넘버는 1
	public String getBBSList(Model model, @RequestParam(defaultValue = "1") int num,
									@RequestParam(defaultValue="") String title,
									@RequestParam(defaultValue="") String content) {
		service.selectBBSList(model, num, title, content);
		return "bbs";
	}
	//3. 삭제, 파일 추가, 확인 ... 수정 ... 
	
	@GetMapping("/detail")
	// detail을 보기 위해서는 num이 필요하다. num을 가져오는 방법
	// 서비스에서 첨부파일 리스트만 가져옴. 댓글이나 파일 첨부 내용 가져오기 이ㅜ해. 본
	public String getBBSDetail(@ModelAttribute("bbsVO") BBSVO vo, Model model) {
		//System.out.println(vo.toString());
		service.selectBBS(model, vo);
		return "bbs_detail";
	}
	
	@GetMapping("/create")
	public String getBBSCreate(BBSVO vo) {
		return "bbs_create";
	}
	
	@PostMapping("/create_result")
	public String setBBSCreate(BBSVO vo) {
//		System.out.println(vo.getTitle());
//		System.out.println(vo.getContent());
//		System.out.println(vo.getOwnerid());
//		System.out.println(vo.getOwnername());
		System.out.println(vo.getFilelist());
		
		vo.setCreatedate(new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA).format(new Date()));
		service.insertBBS(vo);
		return "redirect:/bbs/main";
	}
	
	@GetMapping("/delete_bbs")
	public String delBBS(BBSVO vo) {
		service.deleteBBS(vo);
		return "redirect:/bbs/main";
	}
	
	@GetMapping("/modify_bbs")
	public String modifyBBS(@ModelAttribute BBSVO vo, Model model) {
		service.selectBBS(model, vo);
		return "bbs_modify";
	}
	
	@PostMapping("/modify_result")
	public String modifyBBSResult(BBSVO vo) {
		System.out.println(vo.getFilelist());
		service.updateBBS(vo);
		return "redirect:/bbs/main";
	}
	
	@PostMapping("/deleteFileAll")
	public @ResponseBody ResponseEntity<String> deleteFileAll(@RequestBody FileVO fvo){
//		System.out.println(map.toString());
		System.out.println(fvo.getBnum());
		service.deleteBBSFileAll(fvo);
		return new ResponseEntity<String>("deleteFileAll Success",HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	public @ResponseBody ResponseEntity<String> deleteFile(@RequestBody FileVO[] fvos){
//		System.out.println(map.toString());
		for (FileVO fileVO : fvos) {
			System.out.println(fileVO.getNum());
		}
		service.deleteBBSFile(fvos);
		return new ResponseEntity<String>("deleteFile Success",HttpStatus.OK);
	}
	
	
	@PostMapping("/uploadfile")
	public @ResponseBody ResponseEntity<List<FileVO>> uploadFile(MultipartFile[] uploadFile) throws Exception{
		ArrayList<FileVO> list = new ArrayList<FileVO>();
		
		for (MultipartFile file : uploadFile) {
			if(!file.getOriginalFilename().isEmpty()) {
				String name = UUID.randomUUID().toString();
				file.transferTo(new File("C:/project/eclipse_spring_mvc/temp", name));
				System.out.println(file.getOriginalFilename()+"저장 완료.");
				list.add(new FileVO(name, file.getOriginalFilename()));
			}else {
				System.out.println("데이터가 존재하지 않습니다.");
			}
		}
		System.out.println("모든 데이터가 저장되었습니다.");
		
		ResponseEntity<List<FileVO>> response = new ResponseEntity<List<FileVO>>(list,HttpStatus.OK);
		
		return response;
	}
	// 파일 저장은 temp 폴더에 uuid 로 저장된다. 덮어씌우기 방지, 보안성(확장자 모름)
}

//컨트롤러까지만 vo에 객체가 담겨서 서비스단에서 vo 객체를 새로 생성해서 담은건가요
//주소값을 계속 보존시키려고 model 은 없애고 bbs 만.

