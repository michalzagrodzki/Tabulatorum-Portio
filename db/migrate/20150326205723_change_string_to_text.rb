class ChangeStringToText < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :stories do |t|
        dir.up   { t.change :name, :text }
        dir.down { t.change :name, :string }
      end
    end
  end
end
