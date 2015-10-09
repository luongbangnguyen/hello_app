module UsersHelper
  def gravatar_for(user,  dimension = {size: 100})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag( gravatar_url, alt: user.name, class: "gravatar", size: "#{dimension[:size]}x#{dimension[:size]}")
  end
end
