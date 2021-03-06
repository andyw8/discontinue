class Api::ArtifactResource < JSONAPI::Resource
  attributes :key, :filename, :extension, :size, :presigned_url, :box_id

  key_type :uuid
  belongs_to :box
end
