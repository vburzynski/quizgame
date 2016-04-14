class Question < ActiveRecord::Base
  validates :prompt, presence: true
  validates :incorrect_feedback, presence: true
  validates :correct_feedback, presence: true
end
