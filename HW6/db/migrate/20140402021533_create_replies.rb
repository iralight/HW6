class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :description
      t.date :created_ts

      t.timestamps
    end
  end
end
