  # -*- coding: utf-8 -*-
require 'rakuten_web_service'

class KumamonController < ApplicationController

 def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end
    @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 50, :sex => 0)
    
 end
end
