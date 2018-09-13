def get_first_name(full_name)
    full_name = full_name.split
    full_name[0].to_s
end

def get_first_name_of_season_winner(data, season)
  data.each do |info|
    if info[0] == season
      info[1].each do |name|
        name.each do |key, value|
         if key == "name"
           return get_first_name(value)
         end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |info|
    info[1].each do |name, person_info|
      name.each do |key,value|
        if value == occupation
          name.each do |key1, value1|
            if key1 == "name"
              return value1
            end
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  people = 0
  data.each do |info|
    info[1].each do |name|
      name.each do |key, value|
        if value == hometown
          people += 1
        end
      end
    end
  end
  people
end

def get_occupation(data, hometown)
  data.each do |info|
    info[1].each do |name|
      name.each do |key, value|
        if value == hometown
          name.each do |key1, value1|
             if key1 == "occupation"
               return value1
             end
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |info|
    if info[0] == season
      info[1].each do |name|
        name.each do |key, value|
          if key == "age"
            ages << value.to_f
          end
        end
      end
    end
  end
  ages
  i = 0
  sum = 0
  while i < ages.size
   sum = ages[i] + sum
   i += 1
  end
  (sum / ages.size).round
end
