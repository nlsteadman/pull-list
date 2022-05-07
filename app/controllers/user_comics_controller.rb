class UserComicsController < ApplicationController
    post "/user_comics" do
        @user_comics = UserComic.new(params[:user_comic])
        if @user_comic.save
            @user_comic.to_json
        else
            {errors: @user_comic.errors.full_messages}.to_json
        end
    end

    delete '/user_comics/:id' do
        find_user_comic
        if @user_comic
            @user_comic.destroy
            @user_comic.to_json
        else
            {errors: @user_comic.errors.full_messages}.to_json
        end
    end

    private
        def find_user_comic
            @user_comic = UserComic.find_by_id(params[:id])
        end

end