defmodule Google.Cloud.Discoveryengine.V1.CmekConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :KEY_ISSUE, 3
  field :DELETING, 4
  field :DELETE_FAILED, 7
  field :UNUSABLE, 5
  field :ACTIVE_ROTATING, 6
  field :DELETED, 8
end

defmodule Google.Cloud.Discoveryengine.V1.CmekConfig.NotebookLMState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NOTEBOOK_LM_STATE_UNSPECIFIED, 0
  field :NOTEBOOK_LM_NOT_READY, 1
  field :NOTEBOOK_LM_READY, 2
  field :NOTEBOOK_LM_NOT_ENABLED, 3
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateCmekConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :config, 1, type: Google.Cloud.Discoveryengine.V1.CmekConfig, deprecated: false
  field :set_default, 2, type: :bool, json_name: "setDefault"
end

defmodule Google.Cloud.Discoveryengine.V1.GetCmekConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.SingleRegionKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CmekConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
  field :kms_key_version, 6, type: :string, json_name: "kmsKeyVersion", deprecated: false

  field :state, 3,
    type: Google.Cloud.Discoveryengine.V1.CmekConfig.State,
    enum: true,
    deprecated: false

  field :is_default, 4, type: :bool, json_name: "isDefault", deprecated: false

  field :last_rotation_timestamp_micros, 5,
    type: :int64,
    json_name: "lastRotationTimestampMicros",
    deprecated: false

  field :single_region_keys, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SingleRegionKey,
    json_name: "singleRegionKeys",
    deprecated: false

  field :notebooklm_state, 8,
    type: Google.Cloud.Discoveryengine.V1.CmekConfig.NotebookLMState,
    json_name: "notebooklmState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateCmekConfigMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.ListCmekConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListCmekConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cmek_configs, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CmekConfig,
    json_name: "cmekConfigs"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteCmekConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteCmekConfigMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.CmekConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.CmekConfigService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :UpdateCmekConfig,
      Google.Cloud.Discoveryengine.V1.UpdateCmekConfigRequest,
      Google.Longrunning.Operation

  rpc :GetCmekConfig,
      Google.Cloud.Discoveryengine.V1.GetCmekConfigRequest,
      Google.Cloud.Discoveryengine.V1.CmekConfig

  rpc :ListCmekConfigs,
      Google.Cloud.Discoveryengine.V1.ListCmekConfigsRequest,
      Google.Cloud.Discoveryengine.V1.ListCmekConfigsResponse

  rpc :DeleteCmekConfig,
      Google.Cloud.Discoveryengine.V1.DeleteCmekConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.CmekConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.CmekConfigService.Service
end
