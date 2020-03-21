class ChangeArticlesText < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :text, :content
  end
end
