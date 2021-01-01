def nyc_pigeon_organizer data
  all_pigeon_names = data[:gender][:male]
  all_pigeon_names += data[:gender][:female]

  pigeon_list = {}

  all_pigeon_names.map do |pigeon_name|
    pigeon_list[pigeon_name] = {color: [], gender: [], lives: []}
  end

  data[:color].each do |color, names|
    names.each { |name| pigeon_list[name][:color] << color}

  end

  data[:gender].each do |genders, names|
    names.each { |name| pigeon_list[name][:gender] << genders}
  end

  data[:lives].each do |locations, names|
    names.each { |name| pigeon_list[name][:lives] << locations}
  end

  pigeon_list
end
