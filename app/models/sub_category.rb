=begin
  SubCategory
  Details for controller

  initCoders Base Project
  Created by initCoders
=end

# SubCategory
class SubCategory < ApplicationRecord
  #set Scopes

  belongs_to :super_category
  # belongs_to :user

  # Add validations if needed
  validates :name_en, :name_hi, presence: true


end
