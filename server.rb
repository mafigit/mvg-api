require 'json'
require 'sinatra'
require 'mvg/live'
set :environment, :production
set :bind, '0.0.0.0'

get '/' do
  search_str = params[:search]
  result = MVG::Live.fetch search_str
  content_type :json
  result.to_json
end
