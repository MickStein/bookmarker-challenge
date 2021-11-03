require 'sinatra/base'
require './lib/bookmark'

class Bookmark_page < Sinatra::Base

  get '/test' do
    "test"
  end

  get '/' do 
  redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run if app_file == $0
end
