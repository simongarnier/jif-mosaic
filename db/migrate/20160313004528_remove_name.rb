class RemoveName < ActiveRecord::Migration
  def change
    remove_column :jifs, :name
  end
end
