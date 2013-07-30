class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.boolean :featured
      t.text :summary
      t.text :description

      t.timestamps
    end
  end
end
