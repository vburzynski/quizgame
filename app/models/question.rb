class Question < ActiveRecord::Base
  has_many :question_options
  validates :prompt, presence: true, allow_blank: false
  validates :incorrect_feedback, presence: true, allow_blank: false
  validates :correct_feedback, presence: true, allow_blank: false
end
