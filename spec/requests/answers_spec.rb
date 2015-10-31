require 'rails_helper'
require 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe 'Answers', type: :request do
  FactoryGirl.create(:question)

  it 'create answer', skip: '動かないorz' do
    login_as_admin

    visit new_admin_answer_path
    puts page.text
  end
end
