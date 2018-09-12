# define Product Class
class Product
  attr_reader :pname, :imported, :exempted, :price, :net_price, :tax
  IMPORT_DUTY = 0.5
  SALES_TAX = 0.1
  REGEX_YES = /YES/i
  REGEX_NAME = /(book|food|medicine)/i

  def initialize(pname, imported, exempted, price)
    @pname, @imported, @exempted, @price = pname, imported, exempted, price
    @net_price = calculate_tax
    @tax = total_tax
  end

  def calculate_tax
    price + total_tax
  end

  def total_tax
    calculate_imported_tax + calculate_sales_tax
  end

  def calculate_sales_tax
    if pname =~ REGEX_NAME
      return 0
    else
      exempted =~ REGEX_YES ? 0 : price * SALES_TAX
    end
  end

  def calculate_imported_tax
   imported =~ REGEX_YES ? price * IMPORT_DUTY : 0
  end
end
