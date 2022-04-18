class UsersController < ApplicationController
    get "/users" do
        user = User.all
        user.to_json
    end

    post "/users" do
        user = User.new(params[:user])
        if user.save
            user.to_json
        else
            {errors: user.errors.full_messages}.to_json
        end
    end
end
