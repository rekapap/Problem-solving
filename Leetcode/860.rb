# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  change = {
    5 => nil,
    10 => [[5]],
    20 => [[10, 5], [5, 5, 5]]
  }
  cashier = []
  result = true
  bills.each do |bill|
    if change[bill].nil?
      cashier << bill
      next
    end
    change[bill].each_with_index do |changes, i|
      if change_include?(changes, cashier)
        changes.each do |bill|
          cashier.slice!(cashier.index(bill))
        end
        cashier << bill
        break
      elsif change[bill][i+1].nil?
        result = false
        break
      else
        next
      end
    end
  end
  result
end

def change_include?(changes, cashier)
  cashier_map = cashier.dup
  result = changes.map do |change|
    if cashier_map.include?(change)
      cashier_map.slice!(cashier_map.index(change))
      true
    else
      false
    end
  end
  !result.include?(false)
end

bills = [5,5,10,10,20]
puts lemonade_change(bills)