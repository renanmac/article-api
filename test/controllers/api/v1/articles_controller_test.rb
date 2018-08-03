require 'test_helper'

class Api::V1::ArticlesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @article = articles(:one)
  end

  test "should show articles #index" do
    get api_v1_articles_path
    assert_response :success
  end

  test "should show article" do
    get api_v1_article_path(@article)
    assert_response :success
  end

  test "should save article" do
    post api_v1_articles_path, params: {article: {title: @article.title, content: @article.content}}
    assert_response :success
  end
  
  test "should updated article" do
    patch api_v1_article_path(@article), params: {article:{title: "Updated"}}
    @article.reload
    assert_equal "Updated", @article.title
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete api_v1_article_path(@article)
    end
  end


end
