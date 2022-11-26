class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :fullname
      t.string :email
      t.string :message
      t.boolean :status
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
