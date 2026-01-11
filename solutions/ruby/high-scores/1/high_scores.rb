class HighScores
  def initialize(score_list)
    @scores = score_list
    @sorted_scores = sorted
  end

  def scores
    @scores
  end

  def sorted_scores
    @sorted_scores ||= sorted
  end

  def sorted
    @scores.sort.reverse
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    number_to_take = [3, scores.size].min
    @personal_top_three ||= sorted_scores.take(number_to_take)
  end

  def latest_is_personal_best?
    personal_best == latest
  end
end