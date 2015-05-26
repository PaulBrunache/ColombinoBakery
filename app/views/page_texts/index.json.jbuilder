json.array!(@page_texts) do |page_text|
  json.extract! page_text, :id, :content, :page_id, :title
  json.url page_text_url(page_text, format: :json)
end
