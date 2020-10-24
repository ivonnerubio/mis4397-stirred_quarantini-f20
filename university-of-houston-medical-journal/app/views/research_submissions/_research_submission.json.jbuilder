json.extract! research_submission, :id, :page_title, :string, :submission_title, :string, :body_of_submission, :text, :comments, :text, :authorID, :string, :author_name, :string, :created_at, :updated_at
json.url research_submission_url(research_submission, format: :json)
