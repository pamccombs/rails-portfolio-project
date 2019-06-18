class GenresController < ApplicationController
    
    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end
    
    def show
        @genre = Genre.find(params[:id])
    end

    def create
        @genre = genre.create(genre_params)  
        redirect_to genre_path(@genre.user)
      end
    
      private
    
      def genre_params
        params.require(:genre).permit(:user_id, :game_id, :category)
      end
    end
end
