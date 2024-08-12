class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Email format validation
  validates_email_format_of :email, message: 'is invalid.', if: proc { |f| f.email.present? }

  # Ensure email is unique
  validates :email, uniqueness: true
end
