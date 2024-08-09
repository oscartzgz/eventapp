class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
