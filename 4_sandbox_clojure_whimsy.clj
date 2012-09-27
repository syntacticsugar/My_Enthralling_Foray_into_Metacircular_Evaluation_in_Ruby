(def vowel? (set "aeiou"))

(defn pig-latin [nouvelle]
  (let [first-letter (first nouvelle)]
        (if (vowel? first-letter)
          (str nouvelle "ay")
          (str (subs nouvelle 1) first-letter "ay"))))

(println (pig-latin "closet"))
(println (pig-latin "rainbow"))
(println (pig-latin "carrot"))


