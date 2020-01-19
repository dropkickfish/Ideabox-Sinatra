class Stats
    def self.hourCreated(ideas)
        hours = []
        ideas.each do |idea|
            times = idea.created.split(' ')
            hours << times[2]
        end
        time = []
        hour_count = { "00:00 - 00:59"=> 0, "01:00 - 01:59"=> 0, "02:00 - 02:59"=> 0, "03:00 - 03:59"=> 0, "04:00 - 04:59"=> 0, "05:00 - 05:59"=> 0, "06:00 - 06:59" => 0,
            "07:00 - 07:59"=> 0, "08:00 - 08:59"=> 0, "09:00 - 09:59"=> 0, "10:00 - 10:59"=> 0, "11:00 - 11:59"=> 0, "12:00 - 12:59"=> 0, "13:00 - 13:59" => 0,
            "14:00 - 14:59"=> 0, "15:00 - 15:59"=> 0, "16:00 - 16:59"=> 0, "17:00 - 17:59"=> 0, "18:00 - 18:59"=> 0, "19:00 - 19:59"=> 0, "20:00 - 20:59" => 0,
            "21:00 - 21:59"=> 0, "22:00 - 22:59"=> 0, "23:00 - 23:59" => 0 }
        hours.each do |hour|
         time = Time.strptime(hour, '%H:%M')
        
         
            keys = hour_count.keys
            kvalue = 0
            t1 = Time.parse("00:00")
            t2 = Time.parse("00:59")
            loop do
            if time >= t1 &&  time <= t2
                hour_count[keys[kvalue]]+= 1
                break
            else t1 += 1*60*60
                 t2 += 1*60*60
                 kvalue += 1
            end
        end
    end
    
    hour_count
    #print hour_count

    end
    def self.dayCreated(ideas)
        days = []
        ideas.each do |idea|
            times = idea.created.split(', ')
            days << times[0]
        end
        day_count = {"Monday"=> 0,"Tuesday"=> 0, "Wednesday"=> 0, "Thursday"=> 0, "Friday"=> 0, "Saturday"=> 0, "Sunday"=> 0}
          days.each do |day|
            day_count[day] += 1
          end
        day_count
    end
    def self.dateCreated(ideas)
        dates = []
        ideas.each do |idea|
            times = idea.created.split(' ')
            dates << times[1]
        end
        date_count = dates.each_with_object(Hash.new) do |dates, new_hash|
            if new_hash[dates]
               new_hash[dates] += 1
            else
               new_hash[dates] = 1
            end
         end
        date_count
    end

end
