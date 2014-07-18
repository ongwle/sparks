json.array!(@project_galleries) do |project_gallery|
  json.extract! project_gallery, :id
  json.url project_gallery_url(project_gallery, format: :json)
end
