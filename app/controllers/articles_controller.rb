class ArticlesController < ApplicationController

  def show
    # byebug
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    # render plain: params[:article] # to see plain article params 
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect # too see @article details
    @article.save
    # redirect_to article_path(@article) # redirect to show. shortcut below
    redirect_to @article
  end 

end