# The data above is organized by attributes - `:color`, `:gender`, and `:lives`,
# each a hash. Within these hashes are arrays of pigeon names.

# We want this data, but in a different structure. Rather than sorting by
# attributes, your task is to create a hash where _pigeon names_ are the keys,
# with each name pointing to a hash of their attributes.

# Iterate over the hash above, collecting each pigeon by name and insert it as the
# **key** of a new hash. Each of these hashes should have `:color`, `:gender`, and
# `:lives` keys assigned to arrays of info about that particular pigeon. Your
# output should look something like the hash below:

# ```ruby
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]


def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end