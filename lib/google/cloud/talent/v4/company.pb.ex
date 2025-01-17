defmodule Google.Cloud.Talent.V4.Company.DerivedInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :headquarters_location, 1,
    type: Google.Cloud.Talent.V4.Location,
    json_name: "headquartersLocation"
end

defmodule Google.Cloud.Talent.V4.Company do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :external_id, 3, type: :string, json_name: "externalId", deprecated: false
  field :size, 4, type: Google.Cloud.Talent.V4.CompanySize, enum: true
  field :headquarters_address, 5, type: :string, json_name: "headquartersAddress"
  field :hiring_agency, 6, type: :bool, json_name: "hiringAgency"
  field :eeo_text, 7, type: :string, json_name: "eeoText"
  field :website_uri, 8, type: :string, json_name: "websiteUri"
  field :career_site_uri, 9, type: :string, json_name: "careerSiteUri"
  field :image_uri, 10, type: :string, json_name: "imageUri"

  field :keyword_searchable_job_custom_attributes, 11,
    repeated: true,
    type: :string,
    json_name: "keywordSearchableJobCustomAttributes",
    deprecated: true

  field :derived_info, 12,
    type: Google.Cloud.Talent.V4.Company.DerivedInfo,
    json_name: "derivedInfo",
    deprecated: false

  field :suspended, 13, type: :bool, deprecated: false
end
