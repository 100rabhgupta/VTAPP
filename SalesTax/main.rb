# Main Class
require_relative 'invoice'
product_array = Array.new
loop do
  print 'Name of the product: '
  pname = gets.chomp
  print 'Imported?: '
  imported = gets.chomp
  print 'Exempted from sales tax? '
  exempted =  gets.chomp
  print 'Price: '
  price = gets.to_f
    #Product.new(pname, imported, exempted, price.to_i)
  print'Do you want to add more items to your list(y/n): '
  choice = gets.chomp
  product_array << Product.new(pname, imported, exempted, price)
  break if choice =~ /n/
end

invoice = Invoice.new(product_array)
invoice.display
