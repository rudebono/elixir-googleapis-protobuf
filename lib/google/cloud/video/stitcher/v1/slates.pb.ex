defmodule Google.Cloud.Video.Stitcher.V1.Slate.GamSlate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network_code, 1, type: :string, json_name: "networkCode", deprecated: false
  field :gam_slate_id, 2, type: :int64, json_name: "gamSlateId", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.Slate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
  field :gam_slate, 3, type: Google.Cloud.Video.Stitcher.V1.Slate.GamSlate, json_name: "gamSlate"
end
