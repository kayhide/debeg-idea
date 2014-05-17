class AddIdeaToIines < ActiveRecord::Migration
  def change
    add_reference :iines, :idea, index: true
  end
end
