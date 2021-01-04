def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = data.each_with_object ({}) do |(key, value), result_array|
    value.each do |attribute, names|
      names.each do |name|
        if !result_array[name]
          result_array[name] = {}
        end
        if !result_array[name][key]
          !result_array[name][key] = []
        end
        result_array[name][key].push(attribute.to_s)
      end
    end
  end
end

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute_name] ||= []
        pigeon_list[name][attribute_name].push(attribute_value.to_s)
      end
    end
  end

  pigeon_list
end
