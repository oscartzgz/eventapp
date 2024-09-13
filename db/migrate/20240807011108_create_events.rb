class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
