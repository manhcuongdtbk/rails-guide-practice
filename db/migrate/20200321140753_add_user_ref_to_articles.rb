class AddUserRefToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user, null: false, foreign_key: { on_delete: :cascade }
  end
end
