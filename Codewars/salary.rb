def bonus_time(salary, bonus)
  "$#{salary * (bonus ? 10 : 1)}"
end

print bonus_time(100, true)
