class QuestionOption < ActiveRecord::Base
  belongs_to :question
  default_scope -> { order(order: :asc) }
  validates :question_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates_inclusion_of :correct, :in => [true, false]
  validates_presence_of :question
end
