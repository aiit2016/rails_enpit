# -*- coding: utf-8 -*-
require 'rakuten_web_service'

class A1630tyrankController < ApplicationController
  def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    # Use genre id to fetch genre object
    @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 30, :sex => 1)
  end
end
