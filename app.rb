require 'sinatra/base'
require_relative './lib/bookmark'
class BookmarkManager < Sinatra::Base

  get '/' do
    'hello world from bookmarks'
	end
	
	get '/bookmarks' do
		@bookmarks = Bookmark.all
		erb :bookmarks
	end

  run! if app_file == $0
end
