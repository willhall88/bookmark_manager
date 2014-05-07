require 'sinatra/base'
require "data_mapper"

env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/link'

DataMapper.finalize
DataMapper.auto_upgrade!


class Server < Sinatra::Base
  
  post '/' do
    title = params["title"]
    url = params["url"]
    Link.create(:url => url, :title => title)
    redirect to('/')
  end


  get '/' do
    @links = Link.all
    erb :index
  end


end