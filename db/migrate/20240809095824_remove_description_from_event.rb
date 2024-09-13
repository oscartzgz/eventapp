class RemoveDescriptionFromEvent < ActiveRecord::Migration[7.2]
  def change
    remove_column :events, :description, :string
  end
end
