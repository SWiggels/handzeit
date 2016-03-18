class NewsController < ApplicationController
  before_action :find_news, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @allnews = News.all
  end

  def show

  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @news.update(news_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @news.destroy
    redirect_to root_path
  end

end

private

def news_params
  params.require(:news).permit(:title, :content, :picture)
end

def find_news
  @news = News.find(params[:id])
end