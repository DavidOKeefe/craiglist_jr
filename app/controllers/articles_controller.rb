class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save?
      redirect_to @article
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      render :show
    else
      render :edit
    end
  end


  def destroy
    @article.destroy
    redirect_to category_articles
  end

  private
    def article_params
      params.require(:article).permit(:name, :description, :price, :category_id, :user_id )
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
