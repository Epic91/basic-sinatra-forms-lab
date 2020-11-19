require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do 
    erb :newteam
  end

  #params need to be instance variables so we can access them in team.erb
  post '/team' do 
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]
    erb :team
  end
end