class ChangePublishDatetimeToQuestion < ActiveRecord::Migration
  def change
    change_column :questions, :publish_datetime, :datetime
  end
end
