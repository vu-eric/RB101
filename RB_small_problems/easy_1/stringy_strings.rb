def stringy(number)
  number.even? ? "10" * (number / 2) : "1" + ("01" * (number / 2))
end

