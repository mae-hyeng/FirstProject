package com.tp.vo;

public class BoardVO {

	private int id;
	private String genre;
	private String writer;
	private String title;
	private String content;
	private int hit;
	
	public BoardVO(int id, String genre, String writer, String title, String content, int hit) {
		super();
		this.id = id;
		this.genre = genre;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.hit = hit;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
	
}
