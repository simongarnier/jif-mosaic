class CreateJifs < ActiveRecord::Migration
  def change
    create_table :jifs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
