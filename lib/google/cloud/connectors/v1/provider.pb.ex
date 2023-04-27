defmodule Google.Cloud.Connectors.V1.Provider.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Connectors.V1.Provider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Connectors.V1.Provider.LabelsEntry,
    map: true,
    deprecated: false

  field :documentation_uri, 6, type: :string, json_name: "documentationUri", deprecated: false
  field :external_uri, 7, type: :string, json_name: "externalUri", deprecated: false
  field :description, 8, type: :string, deprecated: false
  field :web_assets_location, 9, type: :string, json_name: "webAssetsLocation", deprecated: false
  field :display_name, 10, type: :string, json_name: "displayName", deprecated: false

  field :launch_stage, 11,
    type: Google.Cloud.Connectors.V1.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.GetProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.ListProvidersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Connectors.V1.ListProvidersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :providers, 1, repeated: true, type: Google.Cloud.Connectors.V1.Provider
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end