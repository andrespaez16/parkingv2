class CommingValueStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :commings, :status, :boolean, default: true
  end
end
