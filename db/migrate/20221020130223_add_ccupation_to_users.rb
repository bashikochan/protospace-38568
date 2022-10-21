class AddCcupationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ccupation, :text
  end
end
