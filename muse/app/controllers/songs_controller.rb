class SongsController < ApplicationController
    def new
        @artist = Artist.find(params[:artist_id])
        @song = @artist.songs.new
    end
    def create
        @artist = Artist.find(params[:artist_id])
        Song.create(song_params)
        redirect_to artist_path(@artist)
    end
    def destroy
        @artist = Artist.find(params[:artist_id])
        @song = Song.find(params[:song_id])
        @song.destroy
        redirect_to artist_path(@artist)
    end
    private
     def song_params
        params.require(:song).permit(:artist_id, :title, :genre)
     end
end


