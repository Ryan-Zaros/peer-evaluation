# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_groups
  belongs_to :role
  has_many :evaluations
  has_many :evaluation_scores
  has_many :groups, through: :user_groups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def password_required?
    false
  end
end
