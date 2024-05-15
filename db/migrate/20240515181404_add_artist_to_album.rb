class AddArtistToAlbum < ActiveRecord::Migration[7.1]
  def change
    add_reference :albums, :artist, foreign_key: true
  end
end
