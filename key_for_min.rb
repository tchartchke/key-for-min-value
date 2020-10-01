# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the KEY for the smallest value. Empty has returns nil

def key_for_min_value(name_hash)
  return nil if name_hash.empty? 
  curr_min = nil
  min_key = nil
  name_hash.each do |key, val|
    
    #"initializing" curr_min
    if !curr_min
      curr_min = val
      min_key = key
      next
    end

    #comparing curr_min to val
    if curr_min > val
      curr_min = val
      min_key = key
    end
  end

  return min_key
end