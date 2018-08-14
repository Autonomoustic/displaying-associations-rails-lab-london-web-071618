class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    Song.all.each { |song| song.artist == self}.count
  
  end
end
