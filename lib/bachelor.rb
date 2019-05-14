require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data.each do |seasons, season_data|
    if seasons == season
      season_data.each.with_index do |contestant_data, index|
        contestant_data.each do |attribute, value|
          if attribute == "status" && value == "Winner"
          winner_name = data[seasons][index]["name"].split[0]
          end
        end
      end
    end
  end
  winner_name
end

# def grab_name_if (candidates_attribute, candidates_value)
# data.each do |seasons, season_data|
# name = ""
#   if seasons == season
#     season_data.each.with_index do |contestant_data, index|
#       contestant_data.each do |attribute, value|
#         if attribute == candidates_attribute && value == candidates_value
#           name = data[seasons][index]["name"].split.join(" ")
#         end
#       end
#     end
#   end
# end
#   name
# end

def get_contestant_name(data, occupation)
  # code here
  occupation_name = ""
  data.each do |seasons, season_data|
      season_data.each.with_index do |contestant_data, index|
        contestant_data.each do |attribute, value|
          if attribute == "occupation" && value == occupation
          occupation_name = data[seasons][index]["name"]
          # binding.pry
          # 0
          end
        end
      end
    end
      occupation_name
  end


def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each do |seasons, season_data|
      season_data.each.with_index do |contestant_data, index|
        contestant_data.each do |attribute, value|
          if attribute == "hometown" && value == hometown
            contestant_count += 1
          end
        end
      end
    end
    contestant_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, season_data|
      season_data.each.with_index do |contestant_data, index|
        contestant_data.each do |attribute, value|
          if attribute == "hometown" && value == hometown
            return data[seasons][index]["occupation"]

          end
        end
      end
    end

end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  num_contestants = 0
  data.each do |seasons, season_data|
    if seasons == season
      season_data.each.with_index do |contestant_data, index|
        num_contestants = season_data.size
        contestant_data.each do |attribute, value|
          if attribute == "age"

            age_sum += value.to_f
          end
        end
      end
    end
  end
    average_age = (age_sum/num_contestants).round
    average_age
end
