# wooooooohooooo I had so much fun writing this
  # that i wrote it in THREE conference rooms in General Assembly
  # with varying shades of magic marker!!!!
  # -------> in both ruby AND *LISP*!!!!

module LispFuckingRocks
  def cons( head, tail )
    lambda { |perform_magic| perform_magic[ head,tail ] }
  end
  def car( perform_magic )
    perform_magic[ lambda{ |head,tail| head } ]
  end
<<<<<<< HEAD


# (def cdr
#     (lambda (do_something)
#         (do_something (lambda (x,y) y))))
  def cdr(x,y)
    perform[ lambda { |x,y| y } ]
=======
  def cdr( perform_magic )
    perform_magic[ lambda{ |head,tail| tail } ]
>>>>>>> a048ff7e7f7c661189724b760f49658721ca4a4c
  end
end


<<<<<<< HEAD
=======
# lisp lambda structure is as follows
# (lambda args action)
# (lambda (x,y) (+ x y))
#
#
#
#
#
#
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

>>>>>>> a048ff7e7f7c661189724b760f49658721ca4a4c



