defmodule Google.Ads.Googleads.V18.Resources.CustomConversionGoal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
      Google.Ads.Googleads.V18.Enums.CustomConversionGoalStatusEnum.CustomConversionGoalStatus,
    enum: true
end
