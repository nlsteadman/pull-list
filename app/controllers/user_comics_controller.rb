class UserComicsController < ApplicationController
    get "/user_comics" do
        @user_comics = UserComic.all
        @user_comics.to_json(include: { users: { include: :comics } } )
    end

end