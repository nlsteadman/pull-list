class UsersController < ApplicationController
    get "/users" do
        @user = User.all
        @user.to_json
    end

    post "/users" do
        @user = User.new(params[:user])
        if @user.save
            @user.to_json
        else
            {errors: @user.errors.full_messages}.to_json
        end
    end

    delete '/users/:id' do
        find_user
        if @user
            @user.destroy
            @user.to_json
        else
            { errors: ["User doesn't exist"]}.to_json
        end
    end

    private
        def find_user
            @user = User.find_by_id(params[:id])
        end
end
