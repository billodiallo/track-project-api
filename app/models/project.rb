# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :programmer
  validates :title, presence: true
  validates :startDate, presence: true
  validates :deadLineDate, presence: true
  validates :budget, presence: true
  validates :programmer_id, presence: true
end
