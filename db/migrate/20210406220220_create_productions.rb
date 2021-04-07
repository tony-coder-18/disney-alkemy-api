class CreateProductions < ActiveRecord::Migration[6.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.date :creation_date
      t.integer :rate

      t.timestamps
    end
  end
end
