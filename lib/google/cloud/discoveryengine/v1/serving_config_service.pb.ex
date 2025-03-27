defmodule Google.Cloud.Discoveryengine.V1.UpdateServingConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serving_config, 1,
    type: Google.Cloud.Discoveryengine.V1.ServingConfig,
    json_name: "servingConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.ServingConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.ServingConfigService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :UpdateServingConfig,
      Google.Cloud.Discoveryengine.V1.UpdateServingConfigRequest,
      Google.Cloud.Discoveryengine.V1.ServingConfig
end

defmodule Google.Cloud.Discoveryengine.V1.ServingConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.ServingConfigService.Service
end
