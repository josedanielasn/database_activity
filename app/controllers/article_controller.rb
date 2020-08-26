class ArticleController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
  
    if @article.save
      redirect_to index_article_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def article_params
    params.require(:article).permit(:title, :description, :user_id)
  end
end
