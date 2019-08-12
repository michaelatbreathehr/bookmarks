require 'sinatra/base'
class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World from bookmarks'
	end
	
	get '/bookmarks' do
		bookmarks = [
							"http://www.makersacademy.com",
							"http://www.destroyallsoftware.com",
							"http://www.google.com"
						 ]
		bookmarks.join
	end

  run! if app_file == $0
end
