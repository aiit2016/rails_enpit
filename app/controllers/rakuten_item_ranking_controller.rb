# -*- coding: utf-8 -*-
require 'rakuten_web_service'

class RakutenItemRankingController < ApplicationController
  def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    # Use genre id to fetch genre object
    @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 40, :sex => 0)
  end
end
