# frozen_string_literal: true

# Query object for Product object
class ProductQuery < ApplicationQuery
  def initialize(records, params)
    @records = records
    @params = params
  end

  def resolve
    @records = by_category if @params[:category].present?
    @records = by_name if @params[:name].present?
    @records
  end

  private

  def by_category
    @records = @records.where(category: @params[:category])
  end

  def by_name
    @records = @records.search(@params[:name])
  end
end
