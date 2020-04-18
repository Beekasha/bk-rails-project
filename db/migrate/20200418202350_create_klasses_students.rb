class CreateKlassesStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses_students do |t|

      t.timestamps
    end
  end
end
