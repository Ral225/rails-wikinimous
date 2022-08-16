class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(articles_params)
    if @articles.save
      redirect_to articles_path
    else
      redirect_to new_article_path
    end
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    if @articles.update(articles_params)  # true
      redirect_to articles_path(@articles)
    else
      redirect_to edit_article_path(@articles) # @loan is similar to do @loan.id
    end
  end

private

def articles_params
  params.require(:article).permit(:title, :content)
end

end
