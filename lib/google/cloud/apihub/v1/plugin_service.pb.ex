defmodule Google.Cloud.Apihub.V1.Plugin.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Apihub.V1.Plugin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :type, 3, type: Google.Cloud.Apihub.V1.AttributeValues, deprecated: false
  field :description, 4, type: :string, deprecated: false
  field :state, 5, type: Google.Cloud.Apihub.V1.Plugin.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetPluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.EnablePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DisablePluginRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubPlugin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubPlugin",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetPlugin, Google.Cloud.Apihub.V1.GetPluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :EnablePlugin, Google.Cloud.Apihub.V1.EnablePluginRequest, Google.Cloud.Apihub.V1.Plugin

  rpc :DisablePlugin, Google.Cloud.Apihub.V1.DisablePluginRequest, Google.Cloud.Apihub.V1.Plugin
end

defmodule Google.Cloud.Apihub.V1.ApiHubPlugin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubPlugin.Service
end
