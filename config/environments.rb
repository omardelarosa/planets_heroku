configure :development do 

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "localhost",
    username: "omardelarosa",
    database: "planets_db",
    encoding: "utf8"
  )

end

configure :production do 
# DATABASE_URL:  HEROKU_POSTGRESQL_SILVER_URL

  ActiveRecord::Base.establish_connection(
    adapter: "postgresql",
    host: "ec2-54-221-243-6.compute-1.amazonaws.com",
    username: "ptirswfcnghmlo",
    password: "uSuF2hnzqEGw7Lr2bIKgBcKk-t",
    database: "dfecqktn15hi6s",
    port: "5432"
  )

end