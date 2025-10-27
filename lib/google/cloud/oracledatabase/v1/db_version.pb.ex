defmodule Google.Cloud.Oracledatabase.V1.DbVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :properties, 2,
    type: Google.Cloud.Oracledatabase.V1.DbVersionProperties,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbVersionProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false

  field :is_latest_for_major_version, 2,
    type: :bool,
    json_name: "isLatestForMajorVersion",
    deprecated: false

  field :supports_pdb, 3, type: :bool, json_name: "supportsPdb", deprecated: false
  field :is_preview_db_version, 4, type: :bool, json_name: "isPreviewDbVersion", deprecated: false
  field :is_upgrade_supported, 5, type: :bool, json_name: "isUpgradeSupported", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_versions, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbVersion,
    json_name: "dbVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
