def nyc_pigeon_organizer data
  all_pigeon_names = data[:gender][:male]
  all_pigeon_names += data[:gender][:female]

  pigeon_list = {}

  all_pigeon_names.map do |pigeon_name|
    pigeon_list[pigeon_name] = {color: [], gender: [], lives: []}
  end

  data[:color].each do |color, names|
    # {
    #   :purple => ["Theo", "Peter Jr.", "Lucky"],
    #   :grey => ["Theo", "Peter Jr.", "Ms. K"],
    #   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    #   :brown => ["Queenie", "Alex"]
    # }
    # pigeon_list["Theo"][:color] = ["purple", "grey"]

    # puts color
    # puts names
    names.each { |name| pigeon_list[name][:color] << color}

  end

  data[:gender].each do |genders, names|
    names.each { |name| pigeon_list[name][:gender] << genders}
  end

  data[:lives].each do |locations, names|
    names.each { |name| pigeon_list[name][:lives] << locations}
  end

  return pigeon_list
end