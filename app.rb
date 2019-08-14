require 'sinatra/base'
require_relative './lib/bookmark' 

class BookmarkManager < Sinatra::Base
	enable :sessions 
	enable :method_override

  	get '/' do
    	'hello world from bookmarks'
	end
	
	get '/bookmarks' do
		@bookmarks = Bookmark.all
		erb :'bookmarks/index'
	end

	post '/bookmarks' do
		Bookmark.create(url: params[:url])
		redirect '/bookmarks'
	end

	get '/bookmarks/new' do
		erb :'bookmarks/new'
	end

	post '/bookmarks/new' do
		Bookmark.create(url: params[:url], title: params[:title])
		redirect '/bookmarks'
	end

	
	delete '/bookmarks/:id' do
		puts "made it to delete route"
		Bookmark.delete(id: params[:id])
		redirect '/bookmarks'
	end


  run! if app_file == $0
end
