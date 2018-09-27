class BagsController < ApplicationController
  BAGS = {
    1 => { name: "tote", material: "silicone gel", color: "white", price: "$50" },
    2 => { name: "night purse", material: "genuine leather", color: "black", price: "$70"},
    3 => { name: "blaze", material: "genuine leather", color: "blue", price: "$100"}
  }

  def index
    if params[:material].blank?
      @bags = BAGS
    else
      @bags = BAGS.select do |id, b| b[:material] == params[:material]
    end
    end
  end
    #@material = BAGS.all
    #@bags all will be available in the view. Info from database

  def show
    @bags = BAGS[params[:id].to_i]
  end
end
