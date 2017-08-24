class StaticPagesController < ApplicationController
  def home
    @images = HomeImage.all
  end

  def about
  end
end
