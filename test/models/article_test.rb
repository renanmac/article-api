require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  def setup
    @article = Article.new
  end

  test "should not article without Title" do
    assert_not @article.save, "Saved article without title"
  end

  test "should not article without Content" do
    assert_not @article.save, "Saved article without content"
  end

  test "should create a article" do
    article = articles(:one)
    assert Article.new(title: article.title, content: article.content)
  end

end
