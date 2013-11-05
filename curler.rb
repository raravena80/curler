require 'rubygems'
require 'json'
# If you're using bundler, you will need to add this
require 'bundler/setup'
require 'sinatra'
require 'haml'


  get '/' do
    haml :index
  end

  post '/' do
    curl_str = params[:curl_str]
    curl_str.strip!
    puts curl_str
    if curl_str.nil? || curl_str.length == 0
      redirect '/empty'
    end
    @output = `curl -s #{curl_str}`
    haml :response
  end

  get '/empty' do
    haml :empty
  end
