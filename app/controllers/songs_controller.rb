class SongsController < ApplicationController
before_action :find, only: [:show, :edit, :update]

    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
    end
    
    def new
        @song = Song.new
    end
    
    def create
        @song = Song.create(song_params(:artist_id, :genre_id, :name))
        redirect_to song_path(@song)
    end
    
    def edit
        
    end
    
    def update
    
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

    def find
        @artists = Artist.all
        @genres = Genre.all
    end
    
end
