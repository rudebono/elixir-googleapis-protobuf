defmodule Google.Cloud.Talent.V4beta1.Company.DerivedInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headquarters_location: Google.Cloud.Talent.V4beta1.Location.t() | nil
        }

  defstruct [:headquarters_location]

  field :headquarters_location, 1, type: Google.Cloud.Talent.V4beta1.Location
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
  field :display_name, 2, type: :string
  field :external_id, 3, type: :string
  field :size, 4, type: Google.Cloud.Talent.V4beta1.CompanySize, enum: true
  field :headquarters_address, 5, type: :string
  field :hiring_agency, 6, type: :bool
  field :eeo_text, 7, type: :string
  field :website_uri, 8, type: :string
  field :career_site_uri, 9, type: :string
  field :image_uri, 10, type: :string
  field :keyword_searchable_job_custom_attributes, 11, repeated: true, type: :string
  field :derived_info, 12, type: Google.Cloud.Talent.V4beta1.Company.DerivedInfo
  field :suspended, 13, type: :bool
end
