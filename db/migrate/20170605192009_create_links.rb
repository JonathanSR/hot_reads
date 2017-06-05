class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url
      t.boolean :read, :default => true

      t.timestamps
    end
  end
end
