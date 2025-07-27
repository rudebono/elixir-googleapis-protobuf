defmodule Google.Cloud.Dataplex.V1.EncryptionConfig.EncryptionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENCRYPTION_STATE_UNSPECIFIED, 0
  field :ENCRYPTING, 1
  field :COMPLETED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dataplex.V1.EncryptionConfig.FailureDetails.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :INTERNAL_ERROR, 1
  field :REQUIRE_USER_ACTION, 2
end

defmodule Google.Cloud.Dataplex.V1.EncryptionConfig.FailureDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_code, 1,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig.FailureDetails.ErrorCode,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :key, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :encryption_state, 5,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig.EncryptionState,
    json_name: "encryptionState",
    enum: true,
    deprecated: false

  field :etag, 6, type: :string

  field :failure_details, 7,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig.FailureDetails,
    json_name: "failureDetails",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateEncryptionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :encryption_config_id, 2,
    type: :string,
    json_name: "encryptionConfigId",
    deprecated: false

  field :encryption_config, 3,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetEncryptionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEncryptionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_config, 1,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEncryptionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEncryptionConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEncryptionConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_configs, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EncryptionConfig,
    json_name: "encryptionConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CmekService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.CmekService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateEncryptionConfig,
      Google.Cloud.Dataplex.V1.CreateEncryptionConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateEncryptionConfig,
      Google.Cloud.Dataplex.V1.UpdateEncryptionConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteEncryptionConfig,
      Google.Cloud.Dataplex.V1.DeleteEncryptionConfigRequest,
      Google.Longrunning.Operation

  rpc :ListEncryptionConfigs,
      Google.Cloud.Dataplex.V1.ListEncryptionConfigsRequest,
      Google.Cloud.Dataplex.V1.ListEncryptionConfigsResponse

  rpc :GetEncryptionConfig,
      Google.Cloud.Dataplex.V1.GetEncryptionConfigRequest,
      Google.Cloud.Dataplex.V1.EncryptionConfig
end

defmodule Google.Cloud.Dataplex.V1.CmekService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.CmekService.Service
end
