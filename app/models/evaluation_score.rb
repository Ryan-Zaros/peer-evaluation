# frozen_string_literal: true

class EvaluationScore < ApplicationRecord
  belongs_to :evaluation
  belongs_to :user
end
