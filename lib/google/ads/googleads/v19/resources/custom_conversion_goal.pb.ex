defmodule Google.Ads.Googleads.V19.Resources.CustomConversionGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string

  field :conversion_actions, 4,
    repeated: true,
    type: :string,
    json_name: "conversionActions",
    deprecated: false

  field :status, 5,
    type:
      Google.Ads.Googleads.V19.Enums.CustomConversionGoalStatusEnum.CustomConversionGoalStatus,
    enum: true
end
