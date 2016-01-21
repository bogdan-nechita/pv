class SayingsController < ApplicationController
  def dada_saying
  	# generate two random ids between 0 and the number of the sayings in the database
  	random_gen = Random.new(Time.now.to_i)
  	first_no = random_gen.rand(1..Saying.all.size)
  	second_no = random_gen.rand(1..Saying.all.size)
    
    # read the two sayings with those ids
  	first_saying = Saying.find(first_no)
  	second_saying = Saying.find(second_no)
    separator = first_saying.separator.nil? ? ' ' : first_saying.separator

    # return the part1 and separator from the first saying and the part2 from the second saying
    # if the separator is a comma, don't add an extra space before it
    part1_padding = separator == ',' ? '' : ' '
    dada_saying = first_saying.part1 + part1_padding + separator + ' ' + second_saying.part2
  	
  	#return the dada_saying as well as the original sayings
  	json_sayings = { dada_saying: dada_saying, first_saying: first_saying.to_json, second_saying: second_saying.to_json}.to_json
  	render json: json_sayings, :callback => params[:callback]
  end
end
