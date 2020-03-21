class ChangeComments < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :comments do |t|
        dir.up do
          t.remove :commenter
          t.rename :body, :content
          t.remove_references :article, foreign_key: true
          t.references :commentable, polymorphic: true
        end

        dir.down do
          t.remove_references :commentable, polymorphic: true
          t.references :article, foreign_key: true
          t.rename :content, :body
          t.column :commenter
        end
      end
    end
  end
end
