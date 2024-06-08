# frozen_string_literal: true

class Product < ApplicationRecord
  ALLOWED_FIELDS = { name: 'Name', code: 'Code', description: 'Description', price: 'price', category: 'Category',
                     image: 'Image', status: 'Status' }.freeze
  ALLOWED_FILES = { csv: 'text/csv', excel: ['application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                             'application/vnd.ms-excel'] }.freeze

  enum status: { out_of_stock: 0, available: 1 }
  validates :name, presence: true
end
