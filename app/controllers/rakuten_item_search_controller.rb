# -*- coding: utf-8 -*-
require 'rakuten_web_service'

class RakutenItemSearchController < ApplicationController
  def index
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    @items = RakutenWebService::Ichiba::Item.search(:keyword => 'Rails')
  end
end
