defmodule Google.Cloud.Asset.V1p7beta1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONTENT_TYPE_UNSPECIFIED
          | :RESOURCE
          | :IAM_POLICY
          | :ORG_POLICY
          | :ACCESS_POLICY
          | :RELATIONSHIP

  field :CONTENT_TYPE_UNSPECIFIED, 0

  field :RESOURCE, 1

  field :IAM_POLICY, 2

  field :ORG_POLICY, 4

  field :ACCESS_POLICY, 5

  field :RELATIONSHIP, 7
end

defmodule Google.Cloud.Asset.V1p7beta1.PartitionSpec.PartitionKey do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARTITION_KEY_UNSPECIFIED | :READ_TIME | :REQUEST_TIME

  field :PARTITION_KEY_UNSPECIFIED, 0

  field :READ_TIME, 1

  field :REQUEST_TIME, 2
end

defmodule Google.Cloud.Asset.V1p7beta1.ExportAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1p7beta1.ContentType.t(),
          output_config: Google.Cloud.Asset.V1p7beta1.OutputConfig.t() | nil,
          relationship_types: [String.t()]
        }

  defstruct [
    :parent,
    :read_time,
    :asset_types,
    :content_type,
    :output_config,
    :relationship_types
  ]

  field :parent, 1, type: :string
  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :asset_types, 3, repeated: true, type: :string
  field :content_type, 4, type: Google.Cloud.Asset.V1p7beta1.ContentType, enum: true
  field :output_config, 5, type: Google.Cloud.Asset.V1p7beta1.OutputConfig
  field :relationship_types, 6, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.ExportAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_time: Google.Protobuf.Timestamp.t() | nil,
          output_config: Google.Cloud.Asset.V1p7beta1.OutputConfig.t() | nil,
          output_result: Google.Cloud.Asset.V1p7beta1.OutputResult.t() | nil
        }

  defstruct [:read_time, :output_config, :output_result]

  field :read_time, 1, type: Google.Protobuf.Timestamp
  field :output_config, 2, type: Google.Cloud.Asset.V1p7beta1.OutputConfig
  field :output_result, 3, type: Google.Cloud.Asset.V1p7beta1.OutputResult
end

defmodule Google.Cloud.Asset.V1p7beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Asset.V1p7beta1.GcsDestination, oneof: 0
  field :bigquery_destination, 2, type: Google.Cloud.Asset.V1p7beta1.BigQueryDestination, oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.OutputResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: {atom, any}
        }

  defstruct [:result]

  oneof :result, 0
  field :gcs_result, 1, type: Google.Cloud.Asset.V1p7beta1.GcsOutputResult, oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.GcsOutputResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()]
        }

  defstruct [:uris]

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object_uri: {atom, any}
        }

  defstruct [:object_uri]

  oneof :object_uri, 0
  field :uri, 1, type: :string, oneof: 0
  field :uri_prefix, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Asset.V1p7beta1.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          table: String.t(),
          force: boolean,
          partition_spec: Google.Cloud.Asset.V1p7beta1.PartitionSpec.t() | nil,
          separate_tables_per_asset_type: boolean
        }

  defstruct [:dataset, :table, :force, :partition_spec, :separate_tables_per_asset_type]

  field :dataset, 1, type: :string
  field :table, 2, type: :string
  field :force, 3, type: :bool
  field :partition_spec, 4, type: Google.Cloud.Asset.V1p7beta1.PartitionSpec
  field :separate_tables_per_asset_type, 5, type: :bool
end

defmodule Google.Cloud.Asset.V1p7beta1.PartitionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_key: Google.Cloud.Asset.V1p7beta1.PartitionSpec.PartitionKey.t()
        }

  defstruct [:partition_key]

  field :partition_key, 1,
    type: Google.Cloud.Asset.V1p7beta1.PartitionSpec.PartitionKey,
    enum: true
end
