class Project < ApplicationRecord
  has_many :vendors, dependent: :destroy
  has_many :programmers, through: :vendors, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :startDate, presence: true
  validates :deadLineDate, presence: true
  validates :budget, presence: true
end
