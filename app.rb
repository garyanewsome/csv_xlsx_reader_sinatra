#app.rb

require 'sinatra'
require "sinatra/reloader"
require 'csv'

arr_of_arrs = CSV.read("savvy.csv")

get '/' do

puts arr_of_arrs

@title = 'Health Payer Processor'
@array = arr_of_arrs
erb :index

end