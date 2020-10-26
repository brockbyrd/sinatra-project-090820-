class TeamsController < ApplicationController

    get '/teams' do
        if !authenticate
            @teams = Team.all
            erb :'/teams/teams'
        end
    end

    get '/teams/new' do
        if !authenticate
            erb :'teams/new'
        end
    end

    post '/teams' do
        if !authenticate
            @team = Team.new(city: params[:city], name: params[:name])
                if @team.save
                    redirect '/teams'
                else
                    redirect '/teams/new'
                end
        end
    end

    get '/teams/:id' do
        if !authenticate
            @team = Team.find_by_id(params[:id])
            erb :'/teams/show'
        end
    end

end