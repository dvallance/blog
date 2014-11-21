require "rubygems"
require "sinatra/base"
require 'pp'

class WiseThinker < Sinatra::Base
	set :root, File.dirname(__FILE__)

	get '/' do
    pp ENV["RACK_ENV"]
    puts 'LOADING INDEX'
		erb :'/index.html', :layout => :'layouts/default.html'
	end

	get '/blog/getting-started-with-jeykll/?' do
		erb :'/blog/getting-started-with-jeykll/index.html', :layout => :'layouts/default.html'
	end

	get '/blog/jeykll-how-post-naming-works/?' do
		erb :'/blog/jeykll-how-post-naming-works/index.html', :layout => :'layouts/default.html'
	end

	get '/blog/part-one-walkthrough-how-to-build-a-modular-web-application-with-ruby/?' do
		erb :'/blog/part-one-walkthrough-how-to-build-a-modular-web-application-with-ruby/index.html', :layout => :'layouts/default.html'
	end

	get '/blog/walkthrough-how-to-build-a-modular-web-application-intro/?' do
		erb :'blog/walkthrough-how-to-build-a-modular-web-application-intro/index.html', :layout => :'layouts/default.html'
	end

	get '/blog/installing-an-operating-system-on-a-zotac-nano-ad10/?' do
		erb :'/blog/installing-an-operating-system-on-a-zotac-nano-ad10/index.html', :layout => :'layouts/default.html'
	end
end
