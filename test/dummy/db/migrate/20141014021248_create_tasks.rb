class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.boolean :complete

      t.timestamps
    end
  end
end
