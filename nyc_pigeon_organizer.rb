def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = {}
  data.each do |category, attrib|
    attrib.each do |value, name|
      organized_data[name] ||= {}
      organized_data[name][category] ||= []
      organized_data[name][category] << value
      
end
