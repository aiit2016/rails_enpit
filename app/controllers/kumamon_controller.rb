  # -*- coding: utf-8 -*-
require 'rakuten_web_service'

class KumamonController < ApplicationController

 def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    @items = RakutenWebService::Books::Total.search(:keyword => 'Rails')
  end
end
