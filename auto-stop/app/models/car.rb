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
end
