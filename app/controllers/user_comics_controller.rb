class UserComicsController < ApplicationController
    get "/user_comics" do
        @user_comics = UserComic.all
        @user_comics.to_json(include: [:user, :comic])
    end
    
    post "/user_comics" do
        @user_comics = UserComic.new(params[:user_comic])
        if @user_comics.save
            @user_comics.to_json(include: [:comic])
        else
            {errors: @user_comics.errors.full_messages}.to_json
        end
    end

    delete '/user_comics/:id' do
        find_user_comic
        if @user_comic
            @user_comic.destroy
            @user_comic.to_json(include: [:comic, :user])
        else
            {errors: @user_comic.errors.full_messages}.to_json
        end
    end

    private
        def find_user_comic
            @user_comic = UserComic.find_by_id(params[:id])
        end

end