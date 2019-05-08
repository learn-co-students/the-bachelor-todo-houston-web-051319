
def get_first_name_of_season_winner(data, season)
  # code here
  winners_name= " "
  first_name = " "
  winner_string = "Winner"
  data[season].each do |season_hash|
    season_hash.each do |key, value|
      if value == "Winner"
        winners_name = season_hash["name"]
        first_name = winners_name.split(" ").first
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  name = "  "
  data.each do |season, array|
    array.each do |people_hash|
      people_hash.each do |key, value|
        if value == occupation
          return people_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code
  counter = 0
  data.each do |season, array|
    array.each do |people_hash|
      people_hash.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |people_hash|
      people_hash.each do |key, value|
        if value == hometown
          return people_hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age= 0
  counter = 0
  value = 1.0
  data[season].each do |season_hash|
    total_age = total_age + season_hash["age"].to_f
    counter+=1
    value = (total_age/counter).round
      end
     return value
end
