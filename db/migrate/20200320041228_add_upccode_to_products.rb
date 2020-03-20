class AddUpccodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :upccode, :text
  end
end
