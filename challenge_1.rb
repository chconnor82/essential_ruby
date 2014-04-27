# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

def loan_payment(interest_rate, number_of_years, principal_value_of_loan)
  monthly_interest_rate = (interest_rate / 100 / 12)
  ((monthly_interest_rate * principal_value_of_loan) / (1 - (1 + monthly_interest_rate) ** (-number_of_years * 12))).round(2)
end

monthly_payment = loan_payment(6.5, 30, 200000)

puts "The return value is #{monthly_payment}"
