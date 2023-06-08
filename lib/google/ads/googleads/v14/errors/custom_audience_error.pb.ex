defmodule Google.Ads.Googleads.V14.Errors.CustomAudienceErrorEnum.CustomAudienceError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NAME_ALREADY_USED, 2
  field :CANNOT_REMOVE_WHILE_IN_USE, 3
  field :RESOURCE_ALREADY_REMOVED, 4
  field :MEMBER_TYPE_AND_PARAMETER_ALREADY_EXISTED, 5
  field :INVALID_MEMBER_TYPE, 6
  field :MEMBER_TYPE_AND_VALUE_DOES_NOT_MATCH, 7
  field :POLICY_VIOLATION, 8
  field :INVALID_TYPE_CHANGE, 9
end

defmodule Google.Ads.Googleads.V14.Errors.CustomAudienceErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end