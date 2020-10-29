require 'pry'

# def get_people_info(data)
#   data.each do |season_num, people|
#     people.each do |person_info|
#       return person_info
#     end
#   end
# end

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, people|
    if season_num == season
      people.find do |person_info|
        if person_info["status"] == "Winner"
          winner = person_info["name"].split(" ")
        end
        return winner[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, people|
    people.each do |person_info|
      if person_info["occupation"] == occupation
        return person_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, people|
    people.each do |person_info|
      if person_info["hometown"] == hometown
         count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_num, people|
    people.each do |person_info|
      if person_info["hometown"] == hometown
        return person_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  people_ages = data[season].map do |person| 
    person["age"].to_i
  end  
  ages_added = people_ages.reduce do |sum, current_age|
     sum += current_age
  end
  number_of_people = people_ages.count.to_f
  return (ages_added / number_of_people).round
end 

# binding.pry
0

# SUCH TRYING

# current_person_age.reduce(0) do |age_sum, current_person_age|
#   binding.pry
#   age_sum += current_person_age

#SOLUTIONS THAT WORK
# def get_average_age_for_season(data, season)
#   sum = 0
#   data.each do |season_num, people|
#     total_people = people.count
#     # binding.pry
#     if season_num == season
#       # binding.pry
#       people.each do |current_person|
#         sum += current_person["age"].to_i
#         # binding.pry
#       end
#       # binding.pry
#     return (sum / total_people)
#     end
#     # binding.pry
#   end
# end

# data.each do |season_num, people|
#   if season_num == season
#     people.each do |person_info|
#       if person_info["status"] = "Winner"
#         first_and_last = person_info["name"].split(" ")
#         return first_and_last[0]
#       end
#     end
#   end 
# end

