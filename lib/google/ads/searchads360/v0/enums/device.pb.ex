defmodule Google.Ads.Searchads360.V0.Enums.DeviceEnum.Device do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MOBILE, 2
  field :TABLET, 3
  field :DESKTOP, 4
  field :CONNECTED_TV, 6
  field :OTHER, 5
end

defmodule Google.Ads.Searchads360.V0.Enums.DeviceEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
