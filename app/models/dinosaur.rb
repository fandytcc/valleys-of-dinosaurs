class Dinosaur < ApplicationRecord
  def self.order_by_name
    order(:name :asc #:desc)
  end

  # scope :order_by_name, -> { order(:name) }

  def is_baby?
      age < 3
  end

end
