class CreateBillingleapCategories < ActiveRecord::Migration
  def change
    create_table :billingleap_categories do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
