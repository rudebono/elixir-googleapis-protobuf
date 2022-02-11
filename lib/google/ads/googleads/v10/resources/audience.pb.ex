defmodule Google.Ads.Googleads.V10.Resources.Audience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V10.Enums.AudienceStatusEnum.AudienceStatus.t(),
          name: String.t(),
          description: String.t(),
          dimensions: [Google.Ads.Googleads.V10.Common.AudienceDimension.t()],
          exclusion_dimension:
            Google.Ads.Googleads.V10.Common.AudienceExclusionDimension.t() | nil
        }

  defstruct resource_name: "",
            id: 0,
            status: :UNSPECIFIED,
            name: "",
            description: "",
            dimensions: [],
            exclusion_dimension: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V10.Enums.AudienceStatusEnum.AudienceStatus,
    enum: true,
    deprecated: false

  field :name, 4, type: :string, deprecated: false
  field :description, 5, type: :string
  field :dimensions, 6, repeated: true, type: Google.Ads.Googleads.V10.Common.AudienceDimension

  field :exclusion_dimension, 7,
    type: Google.Ads.Googleads.V10.Common.AudienceExclusionDimension,
    json_name: "exclusionDimension"
end
