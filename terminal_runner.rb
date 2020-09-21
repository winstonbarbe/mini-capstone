require "http"
# require "tty-table"

system "clear"
puts "Would you like to see all the records?(yes/no)"
input = gets.chomp
if input == "yes"
  response = HTTP.get("http://localhost:3000/api/all_products_path").parse
  # table = TTY::Table[response[0].name]
  puts response
else
  puts "Would you like to see the first product?(yes/no)"
  input = gets.chomp
  if input == "yes"
    response = HTTP.get("http://localhost:3000/api/single_product_path").parse
    puts response
  end

end