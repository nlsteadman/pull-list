class UsersController < ApplicationController
    post "/users" do
        user = User.new(params[:user])
        if user.save
            user.to_json
        else
            {errors: user.errors.full_messages}.to_json
        end
    end
end
