require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = {}
  data.each do |category, attrib|
    attrib.each do |value, name|
      organized_data[name] ||= {}
      organized_data[name][category] ||= []
      organized_data[name][category] << value
      binding.pry
    end
  end
  organized_data
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(pigeon_data)
