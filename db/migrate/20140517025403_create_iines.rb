class CreateIines < ActiveRecord::Migration
  def change
    create_table :iines do |t|
      t.references :giver, index: true
      t.references :taker, index: true

      t.timestamps
    end
  end
end
