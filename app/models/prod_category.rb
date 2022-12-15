# frozen_string_literal: true

class ProdCategory < ApplicationRecord
  has_many :products
  validates :categoryId, :name, presence: true
  validates :categoryId, numericality: true
end
