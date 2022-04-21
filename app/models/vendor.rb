# frozen_string_literal: true

class Vendor < ApplicationRecord
  belongs_to :programmer
  belongs_to :project
end
