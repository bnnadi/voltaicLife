
class WelcomeController < ApplicationController
  def index

  end
  def search
    HTTP.get "http://api.jambase.com/events?zipCode=32828&page=1&api_key=", :params => {:api => "xbg5na4bnkpmyqs5f7zdbrnn"}
  end
end
