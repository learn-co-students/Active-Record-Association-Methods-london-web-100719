require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

    def get_genre_name

        self.genre.name
        
    end

    def drake_made_this
        # binding.pry
        drake_is_real = Artist.all.find {|artist| artist.name == "Drake"}
        # binding.pry
        if !drake_is_real

            drake_is_real = Artist.create(name: "Drake")
            
        end
        # binding.pry
        drake_is_real.songs << self

        # when this method is called it should assign the song's artist to Drake
        # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
        # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

    end
end