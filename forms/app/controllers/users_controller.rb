class UsersController < ApplicationController


  #index

  get '/users' do
    @users = User.all
    erb :'users/index.html'
  end

  #new
  get '/users/new' do
    erb :'users/new.html'
  end

  #show
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show.html'
  end


  #create

  post '/users' do
    #user = User.create(params[:user])
    user = User.new(params[:user])
    if user.save
      redirect "/users/#{user.id}"
    else
      redirect "/users/new"
    end
  end




end
