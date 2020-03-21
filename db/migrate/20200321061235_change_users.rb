class ChangeUsers < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :users do |t|
        dir.up do
          t.change :name, :string, null: false
          t.change :email, :string, null: false
        end

        dir.down do
          t.change :email, :string
          t.change :name, :string
        end
      end
    end
  end
end
