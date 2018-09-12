# Invoice Class
require_relative 'product'
class Invoice
  attr_reader :products
  @@grand_total = 0
  def initialize(products)
    @products = products
  end

  def display
    @products.each do |product|
      @@grand_total += product.net_price
      print "#{product.pname}\tRs.#{product.price}\tRs.#{product.tax}\tRs.#{product.net_price}\n"
    end
    print "Total Amount to pay: Rs#{@@grand_total}"
  end
end
