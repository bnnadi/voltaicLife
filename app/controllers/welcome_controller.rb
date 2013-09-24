require 'net/http'

class WelcomeController < ApplicationController
  def index
    API_Key = 'xbg5na4bnkpmyqs5f7zdbrnn'
    uriEvents = URI('http://api.jambase.com/events?')
    uriArtist = URI('http://api.jambase.com/artists?')
    params = {:api_key => API_Key, :}
       Net::HTTP.get()
  end
end
