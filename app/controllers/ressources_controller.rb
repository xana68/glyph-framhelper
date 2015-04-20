class RessourcesController < ApplicationController
  def show
    @category = Category.includes(:ressources).all
  end
end
