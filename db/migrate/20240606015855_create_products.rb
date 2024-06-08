# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.string :category, default: :general
      t.string :image
      t.integer :status, default: 0
      t.timestamps
    end
    add_index :products, :category
    add_index :products, :code
    add_index :products, :name
  end
end
