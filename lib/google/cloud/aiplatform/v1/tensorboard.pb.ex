defmodule Google.Cloud.Aiplatform.V1.Tensorboard.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Tensorboard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil,
          blob_storage_path_prefix: String.t(),
          run_count: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :encryption_spec,
    :blob_storage_path_prefix,
    :run_count,
    :create_time,
    :update_time,
    :labels,
    :etag
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :blob_storage_path_prefix, 10, type: :string, json_name: "blobStoragePathPrefix"
  field :run_count, 5, type: :int32, json_name: "runCount"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Tensorboard.LabelsEntry,
    map: true

  field :etag, 9, type: :string

  def transform_module(), do: nil
end