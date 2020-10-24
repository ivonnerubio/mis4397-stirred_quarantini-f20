require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_url
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post blogs_url, params: { blog: { ad_space: @blog.ad_space, archives: @blog.archives, article_title: @blog.article_title, authorID: @blog.authorID, author_name: @blog.author_name, body: @blog.body, comment_section: @blog.comment_section, post_title: @blog.post_title, post_type: @blog.post_type, recent_posts: @blog.recent_posts, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, text: @blog.text, text: @blog.text, text: @blog.text, text: @blog.text, title: @blog.title, year: @blog.year } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_url(@blog)
    assert_response :success
  end

  test "should update blog" do
    patch blog_url(@blog), params: { blog: { ad_space: @blog.ad_space, archives: @blog.archives, article_title: @blog.article_title, authorID: @blog.authorID, author_name: @blog.author_name, body: @blog.body, comment_section: @blog.comment_section, post_title: @blog.post_title, post_type: @blog.post_type, recent_posts: @blog.recent_posts, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, string: @blog.string, text: @blog.text, text: @blog.text, text: @blog.text, text: @blog.text, title: @blog.title, year: @blog.year } }
    assert_redirected_to blog_url(@blog)
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blogs_url
  end
end
