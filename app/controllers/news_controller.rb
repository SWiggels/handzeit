class NewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_news

  def index
    @allnews = News.all
  end

  def show

  end

  def new
    @news = News.new
  end

  def create
    entry_params = params["entry"]
    entry = Entry.create(entry_params)
  end

  def edit

  end

  def destroy
    @news.destroy
    redirect_to root_path
  end

end

private

def info_params
  params.require(:news).permit(:title, :content)
end

def find_info
  @news = News.find(params[:id])
end