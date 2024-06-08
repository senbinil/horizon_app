# frozen_string_literal: true

class Product < ApplicationRecord
  enum status: { out_of_stock: 0, available: 1 }
  validates :name, presence: true
end
