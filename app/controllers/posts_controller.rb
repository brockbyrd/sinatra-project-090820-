class PostsController < ApplicationController

    get '/posts' do
        if !authenticate
            @posts = Posts.all
            erb :'/posts/posts'
        end
    end

end