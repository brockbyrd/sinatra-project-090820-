class PostsController < ApplicationController

    get '/posts' do
        if !authenticate
            @posts = Post.all
            erb :'/posts/posts'
        end
    end

    get '/posts/new' do
        if !authenticate
            erb :'posts/new'
        end
    end

    post '/posts' do
        if !authenticate
            @post = current_user.posts.build(content: params[:content], team_id: params[:team_id])
                if @post.save
                    redirect '/posts'
                else
                    redirect '/posts/new'
                end 
        end
    end

    get '/posts/:id' do
        if !authenticate
            @post = Post.find_by_id(params[:id])
            erb :'/posts/show'
        end
    end

    get '/posts/:id/edit' do
        if !authenticate
            @post = current_user.posts.find_by_id(params[:id])
            if @post
                erb :'/posts/edit'
            else
                redirect '/posts'
            end
        end
    end

    patch '/posts/:id' do
        if !authenticate
            @post = current_user.posts.find_by_id(params[:id])
            if @post
                if @post.update(content: params[:content])
                    redirect "/posts/#{@post.id}"
                else
                    redirect "/posts/#{@post.id}/edit"
                end
            else
                redirect '/posts'
            end
        end
    end

    delete '/posts/:id/delete' do
        if !authenticate
            @post = current_user.posts.find_by_id(params[:id])
            if @post
                @post.destroy
                redirect "/posts"
            end
        end
    end



end