# lisp lambda structure is as follows
# (lambda args action)
# (lambda (x,y) (+ x y))

module LispFuckingRocks
  def cons( head, tail )
    lambda { |perform_magic| perform_magic[ head,tail ] }
  end

  def car( head, tail )
    perform_magic[ lambda { |head,tail| head } ]
  end

  def cdr( head, tail )
    perform_magic[ lambda { |head,tail| tail } ]
  end
end

# # begin poetry!
# # (shakespeare could've only coveted from afar)
#
#
#
# (def cons
#     (lambda (x y)
#         (lambda (proc) (proc x y))))
#
# (def car
#     (lambda (do_something)
#         (do_something (lambda (x y) x))))

# (def cdr
#     (lambda (do_something)
#         (do_something (lambda (x y) y))))
#
#
#
# # end poetry... :(




