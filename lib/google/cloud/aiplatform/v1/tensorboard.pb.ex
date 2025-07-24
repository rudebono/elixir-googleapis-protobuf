defmodule Google.Cloud.Aiplatform.V1.Tensorboard.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Tensorboard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :blob_storage_path_prefix, 10,
    type: :string,
    json_name: "blobStoragePathPrefix",
    deprecated: false

  field :run_count, 5, type: :int32, json_name: "runCount", deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Tensorboard.LabelsEntry,
    map: true

  field :etag, 9, type: :string
  field :is_default, 12, type: :bool, json_name: "isDefault"
  field :satisfies_pzs, 13, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 14, type: :bool, json_name: "satisfiesPzi", deprecated: false
end
