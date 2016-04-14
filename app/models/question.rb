class Question < ActiveRecord::Base
  validates :prompt, presence: true, allow_blank: false
  validates :incorrect_feedback, presence: true, allow_blank: false
  validates :correct_feedback, presence: true, allow_blank: false
end
