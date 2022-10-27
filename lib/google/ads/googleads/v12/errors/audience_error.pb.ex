defmodule Google.Ads.Googleads.V12.Errors.AudienceErrorEnum.AudienceError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Ads.Googleads.V12.Errors.AudienceErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end