class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.references :prototype_id
      t.references :user_id
      t.timestamps
    end
  end
end
