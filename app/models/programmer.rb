# frozen_string_literal: true

class Programmer < ApplicationRecord
  has_many :projects
  validates :name, presence: true
  validates :email, presence: true
end
