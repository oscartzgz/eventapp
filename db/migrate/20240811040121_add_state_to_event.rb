class AddStateToEvent < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :state, :integer, null: false, default: 0
  end
end
