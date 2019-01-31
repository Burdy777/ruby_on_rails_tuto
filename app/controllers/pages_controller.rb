class PagesController < ApplicationController

  def home
    @name = 'Burdy'
    @level = 'Expert'
    @number = 15
  end
end
