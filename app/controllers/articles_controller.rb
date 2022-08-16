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

  def edit
    @articles = Article.find(params[:id])
  end

end
