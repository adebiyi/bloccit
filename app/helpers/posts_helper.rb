module PostsHelper
  def post_title(post, post_number)
    (post_number % 5) == 0 ? "CENSORED" : post.title
  end
end
