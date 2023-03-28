package com.tp.mapper;

import java.util.List;

import com.tp.vo.BoardVO;


public interface BoardMapper {

	public List<BoardVO> getList();		//모든 게시물 가져오기
	public boolean insertBoard(BoardVO vo);	//게시물 등록
	public BoardVO getContent(int num);		//게시글 상세보기
	public boolean updateBoard(BoardVO vo);	//게시물 수정완료 버튼
	public void deleteBoard(int num);		//게시물 삭제 메서드
	public boolean updateHit(int num);		//hit값 처리 메서드
	
	
}
