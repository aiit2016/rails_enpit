class RakutenBookSearchController < ApplicationController
  def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    # Use genre id to fetch genre object
    @books = RakutenWebService::Books::Total.search(:keyword => 'test')
  end
  

end
