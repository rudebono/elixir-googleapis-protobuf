defmodule Google.Ads.Admanager.V1.SizeTypeEnum.SizeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SIZE_TYPE_UNSPECIFIED, 0
  field :PIXEL, 1
  field :ASPECT_RATIO, 2
  field :INTERSTITIAL, 3
  field :IGNORED, 4
  field :NATIVE, 5
  field :FLUID, 6
  field :AUDIO, 7
end

defmodule Google.Ads.Admanager.V1.Size do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :width, 1, type: :int32, deprecated: false
  field :height, 2, type: :int32, deprecated: false

  field :size_type, 3,
    type: Google.Ads.Admanager.V1.SizeTypeEnum.SizeType,
    json_name: "sizeType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.SizeTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end