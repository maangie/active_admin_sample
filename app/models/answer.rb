# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  answer_text :string           not null
#  total_count :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :question

  validates :answer_text, presence: true
  validates :total_count, presence: true
end
