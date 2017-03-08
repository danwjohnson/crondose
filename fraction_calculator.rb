require 'rspec'

##
# Summary : Build a program that can perform calculations on two fractions and output the value in a string based fraction format.
#
# Exercise Description
# The program should be able to take three arguments (two fractions and an operator), 
# passed in as strings, accurately perform calculations on them, and return the result 
# in a string based fraction format.
##

def fraction_calculator fraction_one, fraction_two, operator
    case operator
        when '/' then Rational(fraction_one) / Rational(fraction_two)
        when '*' then Rational(fraction_one) * Rational(fraction_two)
        when '+' then Rational(fraction_one) + Rational(fraction_two)
        when '-' then Rational(fraction_one) - Rational(fraction_two)
    end

end

##
# rspec test
##

describe 'Fraction calculator' do
    it 'can perfom calculations on two fractions and output the value in a string based fraction format' do
        expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
        expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
        expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
        expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
    end

end

fraction_calculator("1/3", "2/4", "*")     # => (1/6)