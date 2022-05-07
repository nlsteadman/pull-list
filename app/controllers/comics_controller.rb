class ComicsController < ApplicationController
    get "/comics" do
        @comics = Comic.all
        @comics.to_json(include: [:users])
    end

    get "/comics/:id" do
        find_comic
        @comic.to_json
    end

    get "/comics" do
        @comic = Comic.all.order(:name)
        @comic.to_json
    end

    post "/comics" do
        @comic = Comic.new(params[:comic])
        if @comic.save
            @comic.to_json
        else
            {errors: @comic.errors.full_messages}.to_json
        end
    end

    delete '/comics/:id' do
        find_comic
        if @comic
            @comic.destroy
            @comic.to_json
        else
            { errors: ["Comic doesn't exist"]}.to_json
        end
    end

    patch '/comics/:id' do
        @comic = Comic.find(params[:id])
        @comic.update(
            name: params[:name],
            description: params[:description],
            publisher: params[:publisher],
            genre: params[:genre],
            image_url: params[:image_url],
            price: params[:price],
            rating: params[:rating]
        )
        @comic.to_json
    end


    private
        def find_comic
            @comic = Comic.find_by_id(params[:id])
        end
    
end