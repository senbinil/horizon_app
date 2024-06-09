# frozen_string_literal: true

# generate dummy products for sample xlsx file
class CreateSampleProductsService < ApplicationService
  def initialize(row = 10)
    @row = row
    @products = []
  end

  def resolve
    @row.times do
      @products << sample_product.values
    end
    @products
  end

  def sample_product
    { name: Faker::Device.model_name, code: Faker::Code.sin, description: Faker::Lorem.sentence,
      price: Faker::Number.number(digits: 5), category: 'Mobile', image: Faker::Internet.url(host: 'example.com', path: '/horizon.html'), status: Product.statuses.keys.sample }
  end
end
