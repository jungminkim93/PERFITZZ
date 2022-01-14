package kr.co.goodee39.service;

import java.util.Arrays;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;

import com.google.gson.Gson;

import kr.co.goodee39.vo.BBSVO;
import kr.co.goodee39.vo.FileVO;

@Service
public class BBSService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 아까 BBSService에서 getBBSList메서드 설명 해주실 때 생성자로 객체 만드는 것 말고,
	// 정석으로 하려면 bean객체 만들어서 사용하라고 하셨잖아요
	// 그게 사용할 객체를 root.xml에서 bean정의하고, 객체 사용될 클래스에 @Autowired로 주입하는건가요?

	// getBBSList에서 커맨드객체로 안받고 생성자로 호출 한 이유 다시 부탁드릴 수 있을까요
	// redirect로 bbs페이지를 호출할 것. 저 페이지 호출하면 데이터가 필요하지 않음
	// fm대로 할 거면 root-context에 bean 객체 등록하고 쓰는 게 좋음.
	// 커맨드 객체는 form을 사용하는 경우에 이용한다고 생각하면 편하지 않을까요? 수정, 생성시 command 객체 사용
	// modelAttribute로 매핑하기위해 커멘드 객체를 사용한다.
	// 커맨드 객체를 쓰는 이유는? 데이터를 받아서 매칭시기 위해
	// jsp에 있는 폼쪽으로 데이터를 보내고 싶으면 @modelAttribute를 사용하면 되고 jsp로 그냥 데이터를 보내고 싶으면
	// model, request, modelandview 어떤 것을 사용해도 상관이 없어요. model에 데이터 담아도 결국 내부적으로
	// request에 자동으로 담기기 때문에

	public void selectBBSList(Model model, int num, String title, String content) {
		BBSVO vo = new BBSVO();
		vo.setStart((num - 1) * vo.getCount());
		if (!title.equals("")) {
			model.addAttribute("title", title);
			vo.setTitle("%" + title + "%");
		}
		if (!content.equals("")) {
			model.addAttribute("content", content);
			vo.setContent("%" + content + "%");
		}
		model.addAttribute("list", sqlSessionTemplate.selectList("bbs.selectBBSList", vo));
		model.addAttribute("count", sqlSessionTemplate.selectOne("bbs.selectBBSCount", vo));
		model.addAttribute("num", num);
	}

	// model은 bbs list를 받아와서 view에 뿌려주기 위해 쓴 것
	// list로 저장한 것은 request 쪽으로 mapping 이 된다

	// 컨트롤러에서 vo를 가져와서 서비스에서 vo = sql.. 이라고 선언하면 vo에 대한 주소가 바뀌게 된다. BBSVO vo2를 이용하여
	// vo는 계속 유지하고 값만 새로 들고와서 넣어준다

	public void selectBBS(Model model, BBSVO vo) {
		// vo = sqlSessionTemplate.selectOne("bbs.selectBBS", vo);
		BBSVO vo2 = sqlSessionTemplate.selectOne("bbs.selectBBS", vo);
		// System.out.println(vo2.toString());
		vo.setNum(vo2.getNum());
		vo.setTitle(vo2.getTitle());
		vo.setContent(vo2.getContent());
		vo.setOwnerid(vo2.getOwnerid());
		vo.setOwnername(vo2.getOwnername());
		vo.setCreatedate(vo2.getCreatedate());

		FileVO fvo = new FileVO();
		fvo.setBnum(vo2.getNum());

		List<FileVO> filelist = sqlSessionTemplate.selectList("file.selectFile", fvo);
		model.addAttribute("filelist", filelist);
	}

	@Transactional
	public void insertBBS(BBSVO vo) {
		Gson gson = new Gson();

		FileVO[] fileArray = gson.fromJson(vo.getFilelist(), FileVO[].class);
		List<FileVO> fileList = Arrays.asList(fileArray);

		sqlSessionTemplate.insert("bbs.insertBBS", vo);

		System.out.println(vo.getNum());

		for (FileVO fileVO : fileList) {
			fileVO.setBnum(vo.getNum());
			sqlSessionTemplate.insert("file.insertFile", fileVO);
		}
	}

	public void deleteBBS(BBSVO vo) {

		sqlSessionTemplate.delete("bbs.deleteBBS", vo);
	}

	public void updateBBS(BBSVO vo) {

		Gson gson = new Gson();

		FileVO[] fileArray = gson.fromJson(vo.getFilelist(), FileVO[].class);
		
		sqlSessionTemplate.update("bbs.updateBBS", vo);
		
		if (fileArray != null) {
			List<FileVO> fileList = Arrays.asList(fileArray);
			System.out.println(vo.getNum());
			for (FileVO fileVO : fileList) {
				fileVO.setBnum(vo.getNum());
				sqlSessionTemplate.insert("file.insertFile", fileVO);
			}
		}
	}

	public void deleteBBSFileAll(FileVO fvo) {
//		FileVO fvo = new FileVO();
//		fvo.setBnum(bnum);
		sqlSessionTemplate.delete("file.deleteFile", fvo);
	}

	@Transactional
	public void deleteBBSFile(FileVO[] fvos) {
//		FileVO fvo = new FileVO();
//		fvo.setNum(num);
		for (FileVO fvo : fvos) {
			sqlSessionTemplate.delete("file.deleteFile", fvo);
		}
	}
}
