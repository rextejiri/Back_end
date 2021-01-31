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
end
