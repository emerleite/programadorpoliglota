module TweetHelper
  def next_page_link(page, tag)
    link_to 'Ver mais', see_more_url(:page=>page + 1, :tag=>tag), :class=>'ver_mais'
  end
  
  def previous_page_link(page, tag)
    link_to 'Anteriores', see_more_url(:page=>page - 1, :tag=>tag), :class=>'ver_mais'
  end
  
  def image_url_of(user)
    user.image_url ||= '/images/default_twitter.png'
  end
end
