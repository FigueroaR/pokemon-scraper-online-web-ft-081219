require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db 
<<<<<<< HEAD
  def initialize(db:, id:, name:, type:)
=======
  def initialize(db)
>>>>>>> 83c55de0b709bf8323d43047acf525e0a079a81c
    @db = db
    self.id = id
    self.name = name 
    self.type = type 
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) 
      VALUES (?, ?)", name, type) 
<<<<<<< HEAD
  end 
  
  def self.find(id, db)
    pokemon = db.execute("SELECT *
    FROM pokemon
    WHERE id = ?", id).flatten
    Pokemon.new(id: pokemon[0], name: pokemon[1], type: pokemon[2], db: db) 
=======
>>>>>>> 83c55de0b709bf8323d43047acf525e0a079a81c
  end 
end
