class Object
  def array?
    self.is_a?(Array)
  end
end

class Array
  def rest
    self[1..-1]
  end
end

def hook_up(blokes, lads)
  #guards
  if !blokes.array? or !lads.array?
    raise "Uhhh... neatly bundle the victims as two separate arrays, PLZ PLZ kthnxbai"
  end

  enough_lovers = (blokes.length == lads.length)

  return [] unless enough_lovers


  #the actual function

  #base case: if the lists decreased as to be empty, we're done
  return [] if blokes.empty? and lads.empty?

  if blokes.array? and lads.array?
    pair = []
    pair << blokes.first << lads.first
    #recursive case: build a pair and then recurse to build the other pairs
    #one in each recursion
    hook_up(blokes.rest, lads.rest) << pair
  end

  # (match (match (first x) (match (first y) '() )
  #        (hook_up (rest x) (rest y))))
  
  #When it's 3 am in manhattan and you have been in the vicinity of a boombox all afternoon
  #this is the kind of travesty you end up with: sapphic incestuous spawn that doesn't resemble
  #its mother (scheme) or its OTHER mother, ruby
  #match ( (match (blokes.first, lads.first)), (hook_up (blokes.rest, lads.rest)))

  # hmm... i want to have a line like this
  # `hook_up(blokes,lads) until lovers.been_matched?`
end

