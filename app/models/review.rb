# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  content       :text
#  rating        :integer
#  restaurant_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Review < ApplicationRecord
  RATING = Array(0..5).freeze
  validates :content, :restaurant_id, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: Review::RATING }

  belongs_to :restaurant
end
