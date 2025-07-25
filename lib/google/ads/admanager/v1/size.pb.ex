defmodule Google.Ads.Admanager.V1.Size do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :width, 1, type: :int32, deprecated: false
  field :height, 2, type: :int32, deprecated: false

  field :size_type, 3,
    type: Google.Ads.Admanager.V1.SizeTypeEnum.SizeType,
    json_name: "sizeType",
    enum: true,
    deprecated: false
end
