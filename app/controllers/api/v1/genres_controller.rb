class GenresController < ApplicationController

    def index
        genres = Genre.all 

        render json: genres
    end

    def create
        genre = Genre.create(genre_params)
    end

    private

    def genre_params 
        params.require(:genre).permit(:name)
    end
end
