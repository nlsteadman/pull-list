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

    delete '/comics/:id' do
        find_comic
        if comic
            comic.destroy
            comic.to_json
        else
            { errors: ["Comic doesn't exist"]}.to_json
        end
    end

    private
        def find_comic
            comic = Comic.find_by_id(params[:id])
        end
    end
end