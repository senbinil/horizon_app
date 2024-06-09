# frozen_string_literal: true

# Query object for Product object
class ProductQuery < ApplicationQuery
  def initialize(records, params)
    @records = records
    @params = params
  end

  def resolve
    @records = by_category if @params[:category].present?
    @records = by_search if @params[:name].present?
    @records
  end

  private

  def by_category
    @records = Product.where(category: @params[:category])
    @records
  end

  def by_search
    @records = Product.search(@params[:name])
    @records
  end
end
