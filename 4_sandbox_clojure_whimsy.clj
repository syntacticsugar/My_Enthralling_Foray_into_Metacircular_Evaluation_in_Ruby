(def vowel? (set "aeiou"))

(defn pig-latin [nouvelle]
  (let [first-letter (first nouvelle)]
        (if (vowel? first-letter)
          (str nouvelle "ay")
          (str (subs nouvelle 1) first-letter "ay"))))

(println (pig-latin "closet"))
(println (pig-latin "rainbow"))
(println (pig-latin "carrot"))

; anonymous clojure function.

(defn make-set
  "Takes 1 or 2 values and makes a set."
    ([x] #{x})
    ([x y] #{x y}))

; Clojure provides a shorthand notation for creating an anonymous function using the #() reader feature. In a nutshell, reader features are analogous to preprocessor direc- tives in that they signify that some given form should be replaced with another at read time. In the case of the #() form, it’s effectively replaced with the special form fn. In fact, anywhere that it’s appropriate to use #(), it’s likewise appropriate for the fn special form.
; The #() form can also accept arguments that are implicitly declared through the use of special symbols prefixed with %:

(def make-a-list_  #(list %))
(def make-a-list1  #(list %1))
(def make-a-list2  #(list %1 %2))
(def make-a-list3  #(list %1 %2 %3))

;The way to denote variable arguments is to use the & symbol followed by a symbol. Every symbol in the arguments list before the & will still be bound one-for-one to the same number of arguments passed during the function call. But any additional arguments will be aggregated in a sequence bound to the symbol following the & symbol

(def make-a-list3+  #(list %1 %2 %3 %&))

(make-a-list3+ 1 2 3 4 5)
; => (1 2 3 (4 5))
;
(let [r         5
     pi        3.1415
     r-squared (* r r)]
  (println "radius is" r) ; as it's part of the body, this line is indeed evaluated... but...
  (* pi r-squared)) ; only this last line is returned

(defn print-downward [x]
  (when (> 0 x)
    (println x)
    (recur (dec x))))
