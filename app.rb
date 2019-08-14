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

	post '/bookmarks' do
		Bookmark.create(url: params[:url])
		redirect '/bookmarks'
	end

	get '/bookmarks/new' do
		erb :"bookmarks/new"
	end

	post '/bookmarks/new' do
		p params
		Bookmark.create(url: params[:url], title: params[:title])
		redirect '/bookmarks'
	end

  run! if app_file == $0
end
