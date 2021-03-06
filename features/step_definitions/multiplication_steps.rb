require 'calculator'

When /^I multiply two numbers$/ do
  @product = Calculator.new.multiply 5, 5
end

Then /^I get the product$/ do
  expect(@product).to eq 25
end

When /^I multiply a number by zero$/ do
  @product = Calculator.new.multiply 6, 0
end

Then /^the product is zero$/ do
  expect(@product).to eq 0
end

When /^I multiply the same numbers in different orders$/ do
  calc = Calculator.new
  @product1 = calc.multiply 6, 23
  @product2 = calc.multiply 23, 6
end

Then /^the products are the same$/ do
  expect(@product1).to eq @product2
end



