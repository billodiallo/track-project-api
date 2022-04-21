class Project < ApplicationRecord
  has_many :vendors, dependent: :destroy
  has_many :programmers, through: :vendors, class_name: 'Programmer', foreign_key: :programmer_id
  validates :title, presence: true
  validates :startDate, presence: true
  validates :deadLineDate, presence: true
  validates :budget, presence: true
end
