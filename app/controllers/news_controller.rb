class NewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_news

  def index
    @allnews = News.all
  end

  def show

  end

  def new

  end

  def create
    entry_params = params["entry"]
    entry = Entry.create(entry_params)
  end

  def edit

  end

  def delete

  end

end

def find_news
  @news = News.find(params["id"])
end
