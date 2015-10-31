require 'rails_helper'
require 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe 'Answers', type: :request do
  question = FactoryGirl.create(:question)

  it 'create answer' do
    login_as_admin
    click_link 'Answers'
    click_link 'Answer を作成する'
    select question.title, from: 'Question'
    fill_in 'Answer text', with: 'D:\ruby>cscript //E:rubyscript hello.rb'

    click_button 'Create Answer'
  end
end
