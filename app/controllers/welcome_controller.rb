class WelcomeController < ApplicationController
  before_action :save_ip
  def homepage
    @newest = News.last
  end

  def save_ip
    tracker = find_ip
    if tracker.nil?
      Tracker.create({:ip => request.remote_ip, :timestamp => DateTime.now})
      @showoverlay = true
    else
      if tracker.timestamp + 1.hour < DateTime.now
        @showoverlay = true
        tracker.update(timestamp: DateTime.now)
      else
      @showoverlay = false
        end
    end
  end

    def find_ip
      Tracker.find_by_ip(request.remote_ip)
    end
  end



