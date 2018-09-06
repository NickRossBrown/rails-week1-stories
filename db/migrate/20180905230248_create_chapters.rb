class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.column :description, :string
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
