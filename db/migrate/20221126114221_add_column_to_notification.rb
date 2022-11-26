class AddColumnToNotification < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :notificable_id, :integer
    add_column :notifications, :notificale_type, :string
  end
end
