class CreateWelcomeControllers < ActiveRecord::Migration[6.0]
  def change
    create_table :welcome_controllers do |t|

      t.timestamps
    end
  end
end
