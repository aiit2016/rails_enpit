# -*- coding: utf-8 -*-
require 'rakuten_web_service'

class RakutenItemSearchController < ApplicationController
  #protect_from_forgery except: :result
  def index
  end
  def result
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAPI_APPID"]
      c.affiliate_id = ENV["RAPI_AFID"]
    end

    @items = RakutenWebService::Ichiba::Item.search(:keyword => params['iname'])
  end
end
