# frozen_string_literal: true

# Create products with xlsx/csv file as input
class CreateProductsService < ApplicationService
  def initialize(file)
    @file = file
    @type = file.content_type
    @products = []
  end

  def resolve
    return [@products, 'Invalid file format'] unless csv? || excel?

    input_file = Roo::Spreadsheet.open(@file)
    input_file.each_with_index(Product::ALLOWED_FIELDS) do |product, index|
      next if index.zero? || product[:name].blank? # skip the header fields

      @products << product
    end
    return [@products, 'File is blank'] if @products.blank?

    [@products, '']
  rescue Roo::HeaderRowNotFoundError # input file does not match with Product schema
    [@products, 'Invalid file format']
  end

  private

  def csv?
    @type == Product::ALLOWED_FILES[:csv]
  end

  def excel?
    Product::ALLOWED_FILES[:excel].include?(@type)
  end
end
