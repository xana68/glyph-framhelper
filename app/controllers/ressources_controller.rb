class RessourcesController < ApplicationController
  def show
    @category = Category.includes(:ressources).all
  end

  def ressource_params
    params.require(:ressource).permit(:name, :tag_list)
  end
end
