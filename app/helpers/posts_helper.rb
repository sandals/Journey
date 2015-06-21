module PostsHelper
  def gravatar_url(email, size=48)
    digest = Digest::MD5.hexdigest(email)
    "http://gravatar.com/avatar/#{digest}?s=#{size}"
  end
end
