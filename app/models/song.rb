class Song < ActiveRecord::Base
  attr_accessible :audio, :chart, :lyric, :tablature, :title
end
