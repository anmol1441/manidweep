=begin
  SuperCategory
  Details for controller

  initCoders Base Project
  Created by initCoders
=end

# SuperCategory
class SuperCategory < ApplicationRecord
  has_many :sub_categories, dependent: :destroy
  # belongs_to :user

  # Add validations if needed
  validates :name_en, :name_hi, presence: true

end
