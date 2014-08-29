# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

immed_fam = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immed_fam.values.flatten
    p arr