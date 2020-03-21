class ChangeCommentsContent < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :comments do |t|
        dir.up { t.change :content, :text, null: false }
        dir.down { t.change :content, :text }
      end
    end
  end
end
