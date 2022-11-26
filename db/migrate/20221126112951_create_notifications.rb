class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.bigint  :notificable_id
      t.string  :notificable_type
      t.timestamps
    end
    add_index :notifications, [:notificable_id, :notificable_type]
  end
end
