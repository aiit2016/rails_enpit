  # -*- coding: utf-8 -*-
require 'rakuten_web_service'

class KumamonController < ApplicationController

 def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
    end
    @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 30, :sex => 0)
    
 end
end
