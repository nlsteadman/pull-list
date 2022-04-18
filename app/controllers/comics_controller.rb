class ComicsController < ApplicationController
    get "/comics" do
        comic = Comic.all
        comic.to_json
    end

    post "/comics" do
        comic = Comic.new(params[:comic])
        if comic.save
            comic.to_json
        else
            {errors: comic.errors.full_messages}.to_json
        end
    end
end