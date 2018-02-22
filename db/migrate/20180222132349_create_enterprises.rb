class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
