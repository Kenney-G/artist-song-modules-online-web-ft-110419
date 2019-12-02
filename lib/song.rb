require 'pry'
require './lib/concerns/memorable.rb'
require './lib/concerns/findable.rb'
require './lib/concerns/paramable.rb'

@@songs = []

class Song
  attr_accessor :name
  attr_reader :artist

    extend Findable::ClassMethods
    extend Memorable::ClassMethods
      include Memorable::InstanceMethods
      include Paramable::InstanceMethods
      
  def self.all
    @@songs
  end

  # def name=(name)
  #   @name = name
  # end
  
  def artist=(artist)
    @artist = artist
  end
end
