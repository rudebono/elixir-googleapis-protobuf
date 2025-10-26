defmodule Google.Cloud.Oracledatabase.V1.MinorVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :grid_image_id, 2, type: :string, json_name: "gridImageId", deprecated: false
  field :version, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListMinorVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListMinorVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :minor_versions, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.MinorVersion,
    json_name: "minorVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
