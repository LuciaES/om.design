class AccessoriesController < ApplicationController
  ACCESSORIES = {
    1 => { name: "Pearl neckless", material: "Pearl", color: "white", price: "$50" },
    2 => { name: "Chocker", material: "Pearl", color: "black", price: "$70"},
    3 => { name: "Pearl Pendant", material: "Pearl", color: "blue", price: "$100"}
  }

  def index
    if params[:material].blank?
      @accessories = ACCESSORIES
    else
      @accessories = ACCESSORIES.select do |id, a| a[:material] == params[:material]
    end
    end
  end

  def show
    @accessories = ACCESSORIES[params[:id].to_i]
  end
end
