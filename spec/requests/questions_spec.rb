require 'rails_helper'
require 'helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe 'Questions', type: :request, js: true do
  it 'create question' do
    login_as_admin

    click_link 'Questions'
    click_link 'Question を作成する'

    fill_in     'Title', with: 'ActiveScriptRubyについて'
    attach_file 'Image', "#{fixture_path}/question.jpg"
    fill_in     'question[publish_datetime_date]', with: Date.today.to_s

    click_link '新規に Answer を追加する'
    fill_in 'Answer text', with: 'D:\ruby>cscript //E:rubyscript hello.rb'

    click_button 'Create Question'

    expect(page.text).to include 'ActiveScriptRubyについて'
  end
end
