require 'test_helper'

class ResearchSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_submission = research_submissions(:one)
  end

  test "should get index" do
    get research_submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_research_submission_url
    assert_response :success
  end

  test "should create research_submission" do
    assert_difference('ResearchSubmission.count') do
      post research_submissions_url, params: { research_submission: { authorID: @research_submission.authorID, author_name: @research_submission.author_name, body_of_submission: @research_submission.body_of_submission, comments: @research_submission.comments, page_title: @research_submission.page_title, string: @research_submission.string, string: @research_submission.string, string: @research_submission.string, string: @research_submission.string, submission_title: @research_submission.submission_title, text: @research_submission.text, text: @research_submission.text } }
    end

    assert_redirected_to research_submission_url(ResearchSubmission.last)
  end

  test "should show research_submission" do
    get research_submission_url(@research_submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_submission_url(@research_submission)
    assert_response :success
  end

  test "should update research_submission" do
    patch research_submission_url(@research_submission), params: { research_submission: { authorID: @research_submission.authorID, author_name: @research_submission.author_name, body_of_submission: @research_submission.body_of_submission, comments: @research_submission.comments, page_title: @research_submission.page_title, string: @research_submission.string, string: @research_submission.string, string: @research_submission.string, string: @research_submission.string, submission_title: @research_submission.submission_title, text: @research_submission.text, text: @research_submission.text } }
    assert_redirected_to research_submission_url(@research_submission)
  end

  test "should destroy research_submission" do
    assert_difference('ResearchSubmission.count', -1) do
      delete research_submission_url(@research_submission)
    end

    assert_redirected_to research_submissions_url
  end
end
