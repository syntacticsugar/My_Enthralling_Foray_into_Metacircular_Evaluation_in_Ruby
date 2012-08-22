# lisp lambda structure is as follows
# (lambda args action)
# (lambda (x,y) (+ x y))

module LispFuckingRocks
  def cons(x,y)
    lambda { |perform_magic| perform_magic[x,y] }
  end

  def car(x,y)
    perform_magic[ lambda { |x,y| x } ]
  end

  def cdr(x,y)
    perform[ lambda { |x,y| y } ]
  end
end


# (def cdr
#     (lambda (do_something)
#         (do_something (lambda (x,y) y))))



