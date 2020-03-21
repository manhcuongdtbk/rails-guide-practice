class ChangeArticlesDetail < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :articles do |t|
        dir.up do
          t.change :title, :string, null: false
          t.change :content, :text, null: false
        end

        dir.down do
          t.change :content, :text
          t.change :title, :string
        end
      end
    end
  end
end
