require 'rspec'

##
# Summary : Build a program that outputs a specific set of random numbers.
#
# Exercise Description :
# The program should take in an integer as an argument and each time 
# it’s called should generate the next number in an identical sequence.
##

def pseudo_random num
    srand 1
    
    fiber = Fiber.new do
        num.times do
            Fiber.yield rand 100
        end
    end
end

##
# Un-comment code below to see output print to console
#
#i = pseudo_random 10
#print i.resume
#print "\n"
#print i.resume
#print "\n"
#print i.resume
#print "\n"
##

##
# RSPEC test
##
describe 'Psuedo random number generator' do 
    it 'creates the same sequence of random numbers' do
        random_sequence = pseudo_random 3
        expect(random_sequence.resume).to eq(37)
        expect(random_sequence.resume).to eq(12)
        expect(random_sequence.resume).to eq(72)
    end
end
