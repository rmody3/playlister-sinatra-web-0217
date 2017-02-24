class SongGenre < ActiveRecord::Base
  belongs_to :song
  belongs_to :genre
  extend Slug::ClassMethods
  include Slug::InstanceMethods

end
