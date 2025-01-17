defmodule Google.Cloud.Netapp.V1.KmsConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :CREATING, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :IN_USE, 5
  field :ERROR, 6
  field :KEY_CHECK_PENDING, 7
  field :KEY_NOT_REACHABLE, 8
  field :DISABLING, 9
  field :DISABLED, 10
  field :MIGRATING, 11
end

defmodule Google.Cloud.Netapp.V1.GetKmsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListKmsConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Netapp.V1.ListKmsConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kms_configs, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.KmsConfig,
    json_name: "kmsConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.CreateKmsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :kms_config_id, 2, type: :string, json_name: "kmsConfigId", deprecated: false

  field :kms_config, 3,
    type: Google.Cloud.Netapp.V1.KmsConfig,
    json_name: "kmsConfig",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateKmsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :kms_config, 2,
    type: Google.Cloud.Netapp.V1.KmsConfig,
    json_name: "kmsConfig",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteKmsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.EncryptVolumesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.VerifyKmsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.VerifyKmsConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :healthy, 1, type: :bool, deprecated: false
  field :health_error, 2, type: :string, json_name: "healthError", deprecated: false
  field :instructions, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.KmsConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.KmsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :crypto_key_name, 2, type: :string, json_name: "cryptoKeyName", deprecated: false
  field :state, 3, type: Google.Cloud.Netapp.V1.KmsConfig.State, enum: true, deprecated: false
  field :state_details, 4, type: :string, json_name: "stateDetails", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 6, type: :string
  field :labels, 7, repeated: true, type: Google.Cloud.Netapp.V1.KmsConfig.LabelsEntry, map: true
  field :instructions, 8, type: :string, deprecated: false
  field :service_account, 9, type: :string, json_name: "serviceAccount", deprecated: false
end
