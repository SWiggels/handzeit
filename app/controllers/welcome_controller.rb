class WelcomeController < ApplicationController
  def homepage
    @newest = News.last
  end
end
