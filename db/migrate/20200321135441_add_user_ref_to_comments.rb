class AddUserRefToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :user, null: false, foreign_key: { on_delete: :cascade }
  end
end
