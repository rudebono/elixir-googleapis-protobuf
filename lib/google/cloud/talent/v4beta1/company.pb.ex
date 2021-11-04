defmodule Google.Cloud.Talent.V4beta1.Company.DerivedInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headquarters_location: Google.Cloud.Talent.V4beta1.Location.t() | nil
        }

  defstruct [:headquarters_location]

  field :headquarters_location, 1,
    type: Google.Cloud.Talent.V4beta1.Location,
    json_name: "headquartersLocation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.Company do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          external_id: String.t(),
          size: Google.Cloud.Talent.V4beta1.CompanySize.t(),
          headquarters_address: String.t(),
          hiring_agency: boolean,
          eeo_text: String.t(),
          website_uri: String.t(),
          career_site_uri: String.t(),
          image_uri: String.t(),
          keyword_searchable_job_custom_attributes: [String.t()],
          derived_info: Google.Cloud.Talent.V4beta1.Company.DerivedInfo.t() | nil,
          suspended: boolean
        }

  defstruct [
    :name,
    :display_name,
    :external_id,
    :size,
    :headquarters_address,
    :hiring_agency,
    :eeo_text,
    :website_uri,
    :career_site_uri,
    :image_uri,
    :keyword_searchable_job_custom_attributes,
    :derived_info,
    :suspended
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :external_id, 3, type: :string, json_name: "externalId"
  field :size, 4, type: Google.Cloud.Talent.V4beta1.CompanySize, enum: true
  field :headquarters_address, 5, type: :string, json_name: "headquartersAddress"
  field :hiring_agency, 6, type: :bool, json_name: "hiringAgency"
  field :eeo_text, 7, type: :string, json_name: "eeoText"
  field :website_uri, 8, type: :string, json_name: "websiteUri"
  field :career_site_uri, 9, type: :string, json_name: "careerSiteUri"
  field :image_uri, 10, type: :string, json_name: "imageUri"

  field :keyword_searchable_job_custom_attributes, 11,
    repeated: true,
    type: :string,
    json_name: "keywordSearchableJobCustomAttributes"

  field :derived_info, 12,
    type: Google.Cloud.Talent.V4beta1.Company.DerivedInfo,
    json_name: "derivedInfo"

  field :suspended, 13, type: :bool

  def transform_module(), do: nil
end
