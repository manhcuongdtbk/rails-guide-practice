class ChangeProductsApproved < ActiveRecord::Migration[6.0]
  def change
    change_column_default :products, :approved, from: true, to: false
  end
end
