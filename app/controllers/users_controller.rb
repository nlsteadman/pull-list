class UsersController < ApplicationController
    get "/users" do
        @user = User.all
        @user.to_json(include: [:comics])
    end

    get "/users/:id" do
        find_user
        @user.to_json(include: [:comics])
    end

    post "/users" do
        @user = User.new(params[:user])
        if @user.save
            @user.to_json
        else
            {errors: @user.errors.full_messages}.to_json
        end
    end

    patch "/users/:id" do
        find_user
        @user.update(
            name: params[:user][:name],
            address: params[:user][:address],
            phone_number: params[:user][:phone_number],
            email: params[:user][:email]
        )
        @user.to_json
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
