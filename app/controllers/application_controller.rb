
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :new
  end

  post 'article' do
    @article = Article.create(title: params[:title], content: params[:content])
    #erb :'/articles/:id'
  end
end
