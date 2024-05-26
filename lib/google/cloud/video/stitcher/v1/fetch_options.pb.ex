defmodule Google.Cloud.Video.Stitcher.V1.FetchOptions.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.FetchOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Video.Stitcher.V1.FetchOptions.HeadersEntry,
    map: true
end