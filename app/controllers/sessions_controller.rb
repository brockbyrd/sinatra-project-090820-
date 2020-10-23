class SessionsController < ApplicationController

    get '/login' do
        if !logged_in?
            erb :'/users/login'
        else
            redirect '/posts'
        end
    end

    post '/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            sesssion[:user_id] = user.id
            redirect '/posts'
        else
            redirect '/signup'
        end
    end

    get '/logout' do
        session.clear
        redirect '/logout'
    end

end
