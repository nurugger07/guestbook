class AddTimestampsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :last_active_at, :datetime
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_logout_at, :datetime
  end

  def self.down
    remove_column :users, :last_active_at
    remove_column :users, :last_login_at
    remove_column :users, :last_logout_at
  end
end
