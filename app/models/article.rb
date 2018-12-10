#Placeholder for a model

class Article < ActiveRecord::Base

  attr_accessor :title, :content
  @@all = Array.new

  def initialize(params)
    binding.pry
    @title = params[:title]
    @content = params[:content]
    @@all << self
  end

  def self.all
    @@all
  end 

end
