class HomeController < ApplicationController
  def index
    @article = Article.all
  end

  def read
    @article = Article.where(id: params[:article_id]).first
  end

  def save_comment
    @article = Article.where(id: params[:article_id]).first
    comment = @article.comment.new
    comment.comment = params[:comment]
    if comment.save
      redirect_to read_path(article_id: @article.id, notice: 'Success')
    else
      redirect_to read_path(article_id: @article.id, notice: 'Error')
    end
  end
end
