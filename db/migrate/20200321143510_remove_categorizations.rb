class RemoveCategorizations < ActiveRecord::Migration[6.0]
  def change
    drop_table :categorizations
  end
end
