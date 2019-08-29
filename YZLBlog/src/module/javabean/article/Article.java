package module.javabean.article;

public class Article {
	private int article_id;
	private String article_author;
	private String article_title;
	private String article_time;//时间可以不用String类型
	private String article_summary;
	private String article_content;
	private int article_read;
	private int ariticle_comment_num;
	private int article_apply;
	
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int articleId) {
		article_id = articleId;
	}
	public String getArticle_author() {
		return article_author;
	}
	public void setArticle_author(String articleAuthor) {
		article_author = articleAuthor;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String articleTitle) {
		article_title = articleTitle;
	}
	public String getArticle_time() {
		return article_time;
	}
	public void setArticle_time(String articleTime) {
		article_time = articleTime;
	}
	public String getArticle_summary() {
		return article_summary;
	}
	public void setArticle_summary(String articleSummary) {
		article_summary = articleSummary;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String articleContent) {
		article_content = articleContent;
	}
	public int getArticle_read() {
		return article_read;
	}
	public void setArticle_read(int articleRead) {
		article_read = articleRead;
	}
	public int getAriticle_comment_num() {
		return ariticle_comment_num;
	}
	public void setAriticle_comment_num(int ariticleCommentNum) {
		ariticle_comment_num = ariticleCommentNum;
	}
	public int getArticle_apply() {
		return article_apply;
	}
	public void setArticle_apply(int articleApply) {
		article_apply = articleApply;
	}
}
