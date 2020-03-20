class ChangeProductsPartNumber < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up do
          t.remove_index :part_number
          t.change :part_number, :text
        end

        dir.down do
          t.change :part_number, :string
          t.index :part_number
        end
      end
    end
  end
end
