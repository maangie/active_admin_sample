# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  title            :string           not null
#  image            :string
#  publish_datetime :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_questions_on_publish_datetime  (publish_datetime)
#

UPLOAD_FILE =
  Rack::Test::UploadedFile.new('spec/fixtures/question.jpg', 'image/jpg')

FactoryGirl.define do
  factory :question do
    title 'ActiveScriptRubyについて'
    image UPLOAD_FILE
    publish_datetime DateTime.now
  end
end
