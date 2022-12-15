# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products
  validates :categoryId, :name, presence: true
  validates :categoryId, numericality: true
end
