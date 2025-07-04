defmodule Google.Ads.Googleads.V20.Errors.AudienceErrorEnum.AudienceError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NAME_ALREADY_IN_USE, 2
  field :DIMENSION_INVALID, 3
  field :AUDIENCE_SEGMENT_NOT_FOUND, 4
  field :AUDIENCE_SEGMENT_TYPE_NOT_SUPPORTED, 5
  field :DUPLICATE_AUDIENCE_SEGMENT, 6
  field :TOO_MANY_SEGMENTS, 7
  field :TOO_MANY_DIMENSIONS_OF_SAME_TYPE, 8
  field :IN_USE, 9
  field :MISSING_ASSET_GROUP_ID, 10
  field :CANNOT_CHANGE_FROM_CUSTOMER_TO_ASSET_GROUP_SCOPE, 11
end

defmodule Google.Ads.Googleads.V20.Errors.AudienceErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
