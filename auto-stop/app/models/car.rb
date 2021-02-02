class Car < ApplicationRecord
  DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'auto_stop_development'})
  def self.all
    results = DB.exec("SELECT * FROM cars;")
    return results.map do |result|
      {
        "id" => result["id"].to_i,
        "make" => result["make"],
        "type" => result["type"],
        "model" => result["model"],
        "manufacturer_id" => result["manufacturer_id"].to_i
      }
    end
  end

  def self.find(id)
    results = DB.exec("SELECT * FROM cars WHERE id=#{id};")
    return  {
      "id" => results.first["id"].to_i,
      "make" => results.first["make"],
      "type" => results.first["type"],
      "model" => results.first["model"],
      "manufacturer_id" => results.first["manufacturer_id"].to_i
    }
  end

  def self.create(body)
    results = DB.exec(
      <<-SQL
      INSERT INTO cars (make, type, model, manufacturer_id)
      VALUES('#{body["make"]}', '#{body["type"]}',
      '#{body["model"]}', '#{body["manufacturer_id"]}')
      RETURNING id, make, type, model, manufacturer_id
      SQL
    )
    return{
      "id" => results.first["id"].to_i,
      "make" => results.first["make"],
      "type" => results.first["type"],
      "model" => results.first["model"],
      "manufacturer_id" => results.first["manufacturer_id"].to_i
    }
  end

  def self.delete(id)
    results = DB.exec("DELETE FROM cars WHERE id = #{id};")
    return {"deleted" => true}
  end

  def self.update(id, body)
    results = DB.exec(
    <<-SQL
      UPDATE cars
      SET make='#{body["make"]}', type='#{body["type"]}',
      model='#{body["model"]}', manufacturer_id=#{body["manufacturer_id"]}
      WHERE id=#{id}
      RETURNING id, make, model, manufacturer_id;
    SQL
    )
    return{
      "id" => results.first["id"].to_i,
      "make" => results.first["make"],
      "type" => results.first["type"],
      "model" => results.first["model"],
      "manufacturer_id" => results.first["manufacturer_id"].to_i
    }
  end

  def self.delete(id)
    results = DB.exec("DELETE FROM cars WHERE id = #{id};")
    return {"deleted" => true}
  end

  def self.update(id, body)
    results = DB.exec(
      <<-SQL
        UPDATE cars
        SET make='#{body["make"]}', type='#{body["type"]}',
        model='#{body["model"]}', manufacturer_id=#{body["manufacturer_id"]}
        WHERE id=#{id}
        RETURNING id, make, model, manufacturer_id;
      SQL
    )
    return{
      "id" => results.first["id"].to_i,
      "make" => results.first["make"],
      "type" => results.first["type"],
      "model" => results.first["model"],
      "manufacturer_id" => results.first["manufacturer_id"].to_i
    }
  end


end
