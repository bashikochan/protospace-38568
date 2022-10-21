class RenameCcupationColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :ccupation, :occupation
  end
end
