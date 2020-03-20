class ChangeCategorization < ActiveRecord::Migration[6.0]
  def change
    rename_table :categorization, :categorizations
  end
end
