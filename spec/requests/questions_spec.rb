require 'rails_helper'
# require 'helpers'

# RSpec.configure do |c|
#   c.include Helpers
# end

RSpec.configure do |config|
  config.use_transactional_fixtures = false
end

RSpec.describe 'Questions', type: :request, js: true do
  it 'create question', skip: '動かないorz' do
    admin_user = FactoryGirl.create(:admin_user)
    # login_as(admin_user, scope: :admin_user, run_callbacks: false)

    visit new_admin_user_session_path
    fill_in 'メールアドレス', with: admin_user.email
    fill_in 'パスワード', with: admin_user.password
    
    sleep 1 

    click_button 'ログイン'

    sleep 100000

    # login_as_admin
    # visit new_admin_question_path

    binding.pry

    fill_in 'Title', with: 'ActiveScriptRubyについて'
    attach_file 'Image', "#{fixture_path}/question.jpg"
    fill_in 'question[publish_datetime_date]', with: Date.today.to_s

    click_link '新規に Answer を追加する'
    fill_in 'Answer text', with: 'D:\ruby>cscript //E:rubyscript hello.rb'

    click_button 'Create Question'

    expect(page.text).to include('ActiveScriptRubyについて')
  end
end
