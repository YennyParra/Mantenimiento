# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 cities = [
    "Santiago",
    "Valparaíso",
    "Concepción",
    "La Serena",
    "Antofagasta",
    "Viña del Mar",
    "Puerto Montt",
    "Temuco",
    "Iquique",
    "Arica",
    "Punta Arenas",
    "Calama",
    "Valdivia",
    "Coquimbo"
  ]
  
  cities.each do |city_nombre|
    City.create(nombre: city_nombre)
  end
  
  10.times do 
    user = User.new(
      :email                 => Faker::Internet.email,
      :password              => "123456",
      :password_confirmation => "123456"
    )
    user.save!
  end
  
  user = User.new(
    :email                 => 'admin@admin.com',
    :password              => "123456",
    :password_confirmation => "123456",
    :role => 'admin'
  )
  user.save!

  
  material = Material.new(  :name => 'Turbine')
  material.save!
  material = Material.new(  :name => 'Ignition System')
  material.save!
  material = Material.new(  :name => 'Fuel System')
  material.save!
  
  
  
   def generate_name(tipo, index)
      if tipo == "machine a reaccion" 
          "REAC-#{index}" 
      elsif type == "Tipo de Machine turbohelice" 
          "TURBO-#{index}"
       end
      end 
      (1..20).each do |n|
      if n.odd?
        type = "Machine reaccion"
        name = "REAC-#{n}"
      else
        tipo = "Tipo de machine turbohelice"
        name = "TURBO-#{n}"
      end
  
      description = "Descripcion de la maquina #{n}"
    
      Machine.create(
        type: type,
        name: name,
        description: description
      )
    end