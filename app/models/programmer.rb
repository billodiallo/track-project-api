class Programmer < ApplicationRecord
  has_many :vendors
  has_many :projects, through: :vendors
  VALID_EMAIL_ID = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 3, maximum: 30 }
  validates :email, presence: true, uniqueness: true,
                    length: { minimum: 10, maixmum: 80 },
                    format: { with: VALID_EMAIL_ID }
end
