configure :development do 

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "omardelarosa",
    database: "planets_db",
    encoding: "utf8"
  )

end