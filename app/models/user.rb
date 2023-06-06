class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :first_name, :last_name, :age, :weight, :height, :gender, :goal, :experience
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :programs
  has_many :invoices
end
  
  