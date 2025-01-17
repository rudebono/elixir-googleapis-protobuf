defmodule Google.Ads.Googleads.V16.Resources.OperatingSystemVersionConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, proto3_optional: true, type: :int64, deprecated: false
  field :name, 8, proto3_optional: true, type: :string, deprecated: false

  field :os_major_version, 9,
    proto3_optional: true,
    type: :int32,
    json_name: "osMajorVersion",
    deprecated: false

  field :os_minor_version, 10,
    proto3_optional: true,
    type: :int32,
    json_name: "osMinorVersion",
    deprecated: false

  field :operator_type, 6,
    type:
      Google.Ads.Googleads.V16.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    json_name: "operatorType",
    enum: true,
    deprecated: false
end
