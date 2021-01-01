def nyc_pigeon_organizer data
  all_pigeon_names = data[:gender][:male]
  all_pigeon_names += data[:gender][:female]

  pigeon_list = {}

  all_pigeon_names.map do |pigeon_name|
    pigeon_list[pigeon_name] = {color: [], gender: [], lives: []}
  end

  return pigeon_list
end
