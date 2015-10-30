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

class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  mount_uploader :image, ImageUploader

  just_define_datetime_picker :publish_datetime

  validates :title,            presence: true
  validates :publish_datetime, presence: true
  validates :image,            presence: true
end
