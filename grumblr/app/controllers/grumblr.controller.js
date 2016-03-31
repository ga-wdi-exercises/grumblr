"use strict"
class ProductsController < ApplicationController

  def index

    respond_to do |format|
      format.html
      format.json{ render json: Product.all }
    end
  end

end
