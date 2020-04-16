require 'slim'
require 'sinatra'
require 'sqlite3'
require 'bcrypt'

get("/") do
    slim(:index)
end

get("/Home") do
    slim(:index)
end

get("/Login") do
    slim(:Login)
end