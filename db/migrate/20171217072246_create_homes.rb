class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes, &:timestamps
  end
end
