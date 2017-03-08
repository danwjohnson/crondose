#!/usr/bin/env ruby

require 'rspec'

def hashed_fizz_buzz num
    hash = Hash.new

    1.upto(num).each do |e|
        if (e % 5 == 0) && (e % 3 == 0)
            hash[e] = "fizzbuzz"
        elsif e % 5 == 0
            hash[e] = "buzz"
        elsif e % 3 == 0
            hash[e] = "fizz"
        else
            hash[e] = e
        end

    end

    hash

end

1.upto(10).to_a

describe 'Hashed FizzBuzz' do
    it 'generates a fizzbuzz' do
        final_hash = {
            1=>1, 2=>2, 3=>"fizz", 4=>4, 5=>"buzz", 6=>"fizz", 7=>7, 8=>8, 9=>"fizz",
            10=>"buzz", 11=>11, 12=>"fizz", 13=>13, 14=>14, 15=>"fizzbuzz", 16=>16, 17=>17,
            18=>"fizz", 19=>19, 20=>"buzz", 21=>"fizz", 22=>22, 23=>23, 24=>"fizz", 25=>"buzz"
        }

        expect(hashed_fizz_buzz 25).to eq(final_hash)
    end
end

