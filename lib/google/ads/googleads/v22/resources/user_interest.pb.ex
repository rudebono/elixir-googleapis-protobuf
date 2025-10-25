defmodule Google.Ads.Googleads.V22.Resources.UserInterest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :taxonomy_type, 2,
    type: Google.Ads.Googleads.V22.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    json_name: "taxonomyType",
    enum: true,
    deprecated: false

  field :user_interest_id, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "userInterestId",
    deprecated: false

  field :name, 9, proto3_optional: true, type: :string, deprecated: false

  field :user_interest_parent, 10,
    proto3_optional: true,
    type: :string,
    json_name: "userInterestParent",
    deprecated: false

  field :launched_to_all, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "launchedToAll",
    deprecated: false

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CriterionCategoryAvailability,
    deprecated: false
end
