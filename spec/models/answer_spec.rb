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
# Indexes
#
#  index_answers_on_question_id  (question_id)
#

require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should belong_to :question }

  it { should validate_presence_of :answer_text }
  it { should validate_presence_of :total_count }

  it "new one's total count" do
    expect(FactoryGirl.build(:answer).total_count).to eq 0
  end
end
