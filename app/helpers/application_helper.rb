module ApplicationHelper

  def red_or_white(variety)
    white_wine = [ 'chardonnay', 'sauvignon blanc', 'semillon', 'moscato', 'pinot grigio', 'gewurztraminer', 'riesling', 'white', 'champagne']

    if white_wine.include?(variety)
      'https://s3.amazonaws.com/mywinebucket/generic-white.jpg'
    else
      'https://s3.amazonaws.com/mywinebucket/generic-red.jpg'
    end
  end
end
