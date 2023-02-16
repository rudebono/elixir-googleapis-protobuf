defmodule Google.Ads.Googleads.V13.Resources.SharedSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 8, proto3_optional: true, type: :int64, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V13.Enums.SharedSetTypeEnum.SharedSetType,
    enum: true,
    deprecated: false

  field :name, 9, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V13.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true,
    deprecated: false

  field :member_count, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "memberCount",
    deprecated: false

  field :reference_count, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "referenceCount",
    deprecated: false
end