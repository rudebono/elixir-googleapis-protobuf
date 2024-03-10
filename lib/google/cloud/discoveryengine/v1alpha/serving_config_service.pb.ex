defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateServingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serving_config, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.ServingConfig,
    json_name: "servingConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetServingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListServingConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListServingConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serving_configs, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.ServingConfig,
    json_name: "servingConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ServingConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.ServingConfigService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :UpdateServingConfig,
      Google.Cloud.Discoveryengine.V1alpha.UpdateServingConfigRequest,
      Google.Cloud.Discoveryengine.V1alpha.ServingConfig

  rpc :GetServingConfig,
      Google.Cloud.Discoveryengine.V1alpha.GetServingConfigRequest,
      Google.Cloud.Discoveryengine.V1alpha.ServingConfig

  rpc :ListServingConfigs,
      Google.Cloud.Discoveryengine.V1alpha.ListServingConfigsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListServingConfigsResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ServingConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.ServingConfigService.Service
end