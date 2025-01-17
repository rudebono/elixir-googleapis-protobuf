defmodule Google.Cloud.Discoveryengine.V1beta.UpdateServingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :serving_config, 1,
    type: Google.Cloud.Discoveryengine.V1beta.ServingConfig,
    json_name: "servingConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetServingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListServingConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListServingConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :serving_configs, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.ServingConfig,
    json_name: "servingConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ServingConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.ServingConfigService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :UpdateServingConfig,
      Google.Cloud.Discoveryengine.V1beta.UpdateServingConfigRequest,
      Google.Cloud.Discoveryengine.V1beta.ServingConfig

  rpc :GetServingConfig,
      Google.Cloud.Discoveryengine.V1beta.GetServingConfigRequest,
      Google.Cloud.Discoveryengine.V1beta.ServingConfig

  rpc :ListServingConfigs,
      Google.Cloud.Discoveryengine.V1beta.ListServingConfigsRequest,
      Google.Cloud.Discoveryengine.V1beta.ListServingConfigsResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.ServingConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.ServingConfigService.Service
end
