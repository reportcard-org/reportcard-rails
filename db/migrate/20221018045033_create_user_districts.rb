class CreateUserDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_districts do |t|
      t.references :user, foreign_key: true
      t.references :district, foreign_key: true
    end
  end
end
