# peter norvig plays a pretty little ditty with python.
# i met him at a math event earlier this year and
# he signed my artificial intelligence book.
# he was rather nice, and i do not think he would mind
# if i copied his python code and translated it into Ruby.

def cons( head, tail )
  lambda{ |proc| proc[head, tail] }
end

def car( proc )
  proc[ lambda{ | head, tail | head } ]
end

def cdr( proc )
  proc[ lambda{ | head, tail | tail } ]
end

def eval( x, env=global_env )
  if is_a(x, Symbol)
    return ENV[x]
  elsif not is_a( x, list ) # NOT is_a
    x
  end
end

#  case x.first # snicker...    .first, oh yea!
   case x[0] # snicker...    .first, oh yea!
    when 'quote'
    when 'if'
    when 'set!'
    when 'define'
    when 'lambda'
      :faint
    when 'begin'

    else 

  end

end

