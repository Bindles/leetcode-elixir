# @param {Integer[]} tokens
# @param {Integer} power
# @return {Integer}
def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
    
end

def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
  score = 0
  max = 0
  tokens.sort!
  while tokens.any? && power >= tokens.first
    power -= tokens.shift
    score += 1
    max = score if score > max

    if tokens.any? && power < tokens.first && score > 0
      power += tokens.pop
      score -= 1
    end
    
  end
  max
end
p bag_of_t

def bag_of_tokens_score(tokens = [100,200,300,400], power = 200)
    max = score = 0
    tokens.sort!.size.times do
        if power >= tokens.first
            power -= tokens.shift
            max = [max, score += 1].max
        else 
			return max if score.zero?   # We aren't allowed to have negative score.
            power += tokens.pop
            score -= 1
        end
    end
    max
end
Bonus: crazy 1-liner:
def bag_of_tokens_score(tokens, pow)
    score = 0 and tokens.sort!.size.times.map { pow >= tokens[0] ? (pow -= tokens.shift)*0 + score += 1 : ( pow += score>0 ? tokens.pop : 0 )*0 + score -= 1 }.push(0).max
end