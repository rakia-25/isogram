require 'sinatra'
require './index'
get '/'do
erb:'index'
end

post '/process' do
  input=params[:input]
  if is_isogram?(input)
    erb:'is_isogram'
  else
    erb:'is_not_isogram'
  end
end