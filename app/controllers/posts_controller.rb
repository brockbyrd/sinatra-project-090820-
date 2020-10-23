class PostsController < ApplicationController

    get '/posts' do
        if !authenticate
            @posts = Posts.all
            erb :'/posts/posts'
        end
    end

    get '/posts/new' do
        if !authenticate
            erb :'posts/new'
    end

    post '/posts' do
        if !authenticate
            @post = current_user.posts.build(content: params[:content])
                if @post.save
                    redirect '/posts'
                else
                    redirect '/posts/new'
                end
        end
    end

end