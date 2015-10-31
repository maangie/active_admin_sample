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

include Rack::Test::Methods

FactoryGirl.define do
  factory :question do
    title 'ActiveScriptRubyについて'
    image Rack::Test::UploadedFile.new("spec/fixtures/question.jpg", "mime/type")
    publish_datetime DateTime.now
  end
end
