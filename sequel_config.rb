require 'sequel'
require 'dotenv'
Dotenv.load


DB = Sequel.connect(adapter: ENV['ADAPTER',],
                    user: ENV['USER'],
                    host: ENV['HOST'],
                    database: ENV['DATABASE'],
                    password: ENV['PASSWORD'])

