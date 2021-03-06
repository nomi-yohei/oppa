class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendences, dependent: :destroy
  validates :name, presence: true
  validates :my_number, presence: true, numericality: true,length:{maximum: 9,minimum: 9}
  validates :my_grade, presence: true
  has_many :centers
  # accepts_nested_attributes_for :center
end
