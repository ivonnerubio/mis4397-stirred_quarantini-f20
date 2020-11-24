require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { abstract: @article.abstract, appendice: @article.appendice, article_author: @article.article_author, article_info: @article.article_info, article_rating: @article.article_rating, article_title: @article.article_title, case_presentation: @article.case_presentation, categories: @article.categories, conclusion: @article.conclusion, disclosures_agreements: @article.disclosures_agreements, discussion: @article.discussion, email: @article.email, facebook: @article.facebook, figures: @article.figures, forum_comments: @article.forum_comments, introduction: @article.introduction, keywords: @article.keywords, linked_in: @article.linked_in, metrics: @article.metrics, pdf_download: @article.pdf_download, references: @article.references, string: @article.string, twitter: @article.twitter, whats_app: @article.whats_app } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { abstract: @article.abstract, appendice: @article.appendice, article_author: @article.article_author, article_info: @article.article_info, article_rating: @article.article_rating, article_title: @article.article_title, case_presentation: @article.case_presentation, categories: @article.categories, conclusion: @article.conclusion, disclosures_agreements: @article.disclosures_agreements, discussion: @article.discussion, email: @article.email, facebook: @article.facebook, figures: @article.figures, forum_comments: @article.forum_comments, introduction: @article.introduction, keywords: @article.keywords, linked_in: @article.linked_in, metrics: @article.metrics, pdf_download: @article.pdf_download, references: @article.references, string: @article.string, twitter: @article.twitter, whats_app: @article.whats_app } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
