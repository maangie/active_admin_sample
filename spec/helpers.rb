RSpec.configure do |config|
  require 'database_cleaner'

  config.include Warden::Test::Helpers

  config.before :suite do
    Warden.test_mode!
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end
  
  config.before(:each) do
    DatabaseCleaner.start
  end
  
  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.use_transactional_fixtures = false
end

module Helpers
  def login_as_admin
    admin_user = FactoryGirl.create(:admin_user)

    login_as(admin_user, scope: :admin_user, run_callbacks: false)
    admin_user
  end
end
