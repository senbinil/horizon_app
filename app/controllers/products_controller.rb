# frozen_string_literal: true

class ProductsController < ApplicationController
  def index; end

  def new
    flash[:error] = nil
  end

  def create
    @products, @errors = CreateProductsService.perform(products_params[:file])
    if @errors.present?
      flash[:error] = @errors
    else
      Product.insert_all(@products)
    end
  end

  # GET /products/sample: generate sample file
  def sample
    @products = CreateSampleProductsService.perform
    respond_to(&:xlsx)
  end

  private

  def products_params
    params.require(:product).permit(:file)
  end
end
