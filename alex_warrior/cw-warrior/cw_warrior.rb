# Create a Warrior class
# It must support level, rank, experience, achievements, training(event), and battle(enemy_level) methods
class Warrior

  def initialize(experience=100, level=1, rank="Pushover", achievements=[])
    #setting default values for new warrior
    @experience = experience
    @level = level
    @rank = rank
    @achievements = achievements
  end

  def experience
    #max experience of 10000
    if @experience > 10000
      @experience = 10000
    else
      @experience
    end
  end

  def level
    #max level of 100
    if @level > 100
      @level = 100
    else
      @level = @experience / 100
    end
  end 

  def rank
    #rank determined by level. perhaps clean up by implementing an array with rank names and progress through array[i]
    case @level
    when 1..9
      @rank = "Pushover"
    when 10..19
      @rank = "Novice"
    when 20..29
      @rank = "Fighter"
    when 30..39
      @rank = "Warrior"
    when 40..49
      @rank = "Veteran"
    when 50..59
      @rank = "Sage"
    when 60..69
      @rank = "Elite"
    when 70..79
      @rank = "Conqueror"
    when 80..89
      @rank = "Champion"
    when 90..99
      @rank = "Master"
    when 100
      @rank = "Greatest"
    else
      return "not a valid rank"
    end
  end

  def achievements
    @achievements
  end

  def training(arr)
    if arr[2] <= @level #level check
      @experience += arr[1] #add experience to current experience
      self.level #update level
      @achievements << arr[0] #add description to achievements array
      arr[0]
    else
      return "Not strong enough"
    end
  end
  

  def battle(opp_lvl)
    if opp_lvl < 1 or opp_lvl > 100 #filter out invalid opponent levels
      return "Invalid level"
    end
    
    #if warrior has higher or equal level to opponenent
    #update experience and level according to rules
    if @level >= opp_lvl
      if @level == opp_lvl
        @experience += 10
        self.level
        return "A good fight"
      elsif @level - opp_lvl == 1
        @experience += 5
        self.level
        return "A good fight"
      elsif @level - opp_lvl >= 2
        @experience += 0
        return "Easy fight"
      end
    end
      
    #if warrior has lower level than opponent
    #update according to rules
    if @level < opp_lvl
      if (opp_lvl - @level >= 5) && self.diff_rank(opp_lvl)
        @experience += 0
        self.level
        return "You've been defeated"
      elsif opp_lvl - @level >= 1
        diff = opp_lvl - @level
        @experience += 20 * diff * diff
        self.level
        return "An intense fight"
      end
    end
    
  end

  #helper method for determining whether the opponent and warrior have different ranks only using levels as a guide
  def diff_rank(opp_lvl)
    lvl_str = @level.to_s
    opp_lvl_str = opp_lvl.to_s

    if opp_lvl_str.length > lvl_str.length #e.g. "13".length > "8".length or "100".length > "99".length
      return true
    elsif (opp_lvl_str.length == lvl_str.length) && (opp_lvl_str[0] != lvl_str[0]) && (opp_lvl_str.length != 1) #comparing first digit for nums 10 and above
      return true
    else
      return false
    end
  end

end