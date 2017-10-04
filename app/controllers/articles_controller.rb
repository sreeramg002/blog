class ArticlesController < ApplicationController
  def new
  end

  def create
@article = Article.new(params.require(:article).permit(:title, :text))
    @article = Article.new(params[:article])

    @article.save
  redirect_to @article

  end
end
