class ChangeProductsDetails < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up do
          t.remove :description, :name
          t.index :part_number
          t.rename :upccode, :upc_code
        end

        dir.down do
          t.rename :upc_code, :upccode
          t.remove_index :part_number
          t.column :name, :string
          t.column :description, :text
        end
      end
    end
  end
end
