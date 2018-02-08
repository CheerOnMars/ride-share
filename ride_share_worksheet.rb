########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

  # 1st layer - Contain all data for each ride
  # 2nd layer - Contain each ride's data

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # 1st layer - Array. Each new ride is in its own row at the end of the array. Order matters because the rides are added in order
  # 2nd layer - Hash. It's important that each value has the key defined. The order of the items in the hash don't matter.


########################################################
# Step 3: Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv
rides = Array.new

      rides = [
        {
          ride_id: "TR0001",
          driver_id: "DR0004",
          date: "3rd Feb 2016",
          cost: 5,
          rider_id: "RD0022",
          rating: 5,
        },
        {
          ride_id: "TR0002",
          driver_id: "DR0001",
          date: "3rd Feb 2016",
          cost: 10,
          rider_id: "RD0003",
          rating: 3,
        },
        {
          ride_id: "TR0003",
          driver_id: "DR0002",
          date: "3rd Feb 2016",
          cost: 25,
          rider_id: "RD0073",
          rating: 5,
        },
        {
          ride_id: "TR0004",
          driver_id: "DR0001",
          date: "3rd Feb 2016",
          cost: 30,
          rider_id: "RD0015",
          rating: 4,
        },
        {
          ride_id: "TR0005",
          driver_id: "DR0003",
          date: "4th Feb 2016",
          cost: 5,
          rider_id: "RD0066",
          rating: 5,
        },
        {
          ride_id: "TR0006",
          driver_id: "DR0004",
          date: "4th Feb 2016",
          cost: 10,
          rider_id: "RD0022",
          rating: 4,
        },
        {
          ride_id: "TR0007",
          driver_id: "DR0002",
          date: "4th Feb 2016",
          cost: 15,
          rider_id: "RD0013",
          rating: 1,
        },
        {
          ride_id: "TR0008",
          driver_id: "DR0003",
          date: "5th Feb 2016",
          cost: 50,
          rider_id: "RD0003",
          rating: 2,
        },
        {
          ride_id: "TR0009",
          driver_id: "DR0002",
          date: "5th Feb 2016",
          cost: 35,
          rider_id: "RD0066",
          rating: 3,
        },
        {
          ride_id: "TR0010",
          driver_id: "DR0004",
          date: "5th Feb 2016",
          cost: 20,
          rider_id: "RD0073",
          rating: 5,
        },
        {
          ride_id: "TR0011",
          driver_id: "DR0001",
          date: "5th Feb 2016",
          cost: 45,
          rider_id: "RD0003",
          rating: 2,
        }
      ]

#confirm that data is stored as intended.
rides.each do |i|
  puts i
  puts
end

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

# set counters for each driver's number of rides and money earned.
DR0001_rides = 0
DR0002_rides = 0
DR0003_rides = 0
DR0004_rides = 0

DR0001_cost = 0
DR0002_cost = 0
DR0003_cost = 0
DR0004_cost = 0

# Use an iteration block to print driver's total rides and money made
rides.each do |i|
  case i[:driver_id]
    when "DR0001"
     DR0001_rides += 1
     DR0001_cost += i[:cost]
    when "DR0002"
      DR0002_rides += 1
      DR0002_cost += i[:cost]
    when "DR0003"
      DR0003_rides += 1
      DR0003_cost += i[:cost]
    when "DR0004"
      DR0004_rides += 1
      DR0004_cost += i[:cost]
  end
end

puts "DR0001 ride number: #{DR0001_rides}"
puts "DR0002 ride number: #{DR0002_rides}"
puts "DR0003 ride number: #{DR0003_rides}"
puts "DR0004 ride number: #{DR0004_rides}"
puts
puts "DR0001 earnings: #{DR0001_cost}"
puts "DR0002 earnings: #{DR0002_cost}"
puts "DR0003 earnings: #{DR0003_cost}"
puts "DR0004 earnings: #{DR0004_cost}"
