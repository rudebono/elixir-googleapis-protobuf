defmodule Google.Bigtable.Admin.V2.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_NOT_KNOWN | :READY | :CREATING

  field :STATE_NOT_KNOWN, 0

  field :READY, 1

  field :CREATING, 2
end

defmodule Google.Bigtable.Admin.V2.Instance.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :PRODUCTION | :DEVELOPMENT

  field :TYPE_UNSPECIFIED, 0

  field :PRODUCTION, 1

  field :DEVELOPMENT, 2
end

defmodule Google.Bigtable.Admin.V2.Cluster.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_NOT_KNOWN | :READY | :CREATING | :RESIZING | :DISABLED

  field :STATE_NOT_KNOWN, 0

  field :READY, 1

  field :CREATING, 2

  field :RESIZING, 3

  field :DISABLED, 4
end

defmodule Google.Bigtable.Admin.V2.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Bigtable.Admin.V2.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Bigtable.Admin.V2.Instance.State.t(),
          type: Google.Bigtable.Admin.V2.Instance.Type.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :display_name, :state, :type, :labels]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :state, 3, type: Google.Bigtable.Admin.V2.Instance.State, enum: true
  field :type, 4, type: Google.Bigtable.Admin.V2.Instance.Type, enum: true
  field :labels, 5, repeated: true, type: Google.Bigtable.Admin.V2.Instance.LabelsEntry, map: true
end

defmodule Google.Bigtable.Admin.V2.Cluster.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string
end

defmodule Google.Bigtable.Admin.V2.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location: String.t(),
          state: Google.Bigtable.Admin.V2.Cluster.State.t(),
          serve_nodes: integer,
          default_storage_type: Google.Bigtable.Admin.V2.StorageType.t(),
          encryption_config: Google.Bigtable.Admin.V2.Cluster.EncryptionConfig.t() | nil
        }

  defstruct [:name, :location, :state, :serve_nodes, :default_storage_type, :encryption_config]

  field :name, 1, type: :string
  field :location, 2, type: :string
  field :state, 3, type: Google.Bigtable.Admin.V2.Cluster.State, enum: true
  field :serve_nodes, 4, type: :int32
  field :default_storage_type, 5, type: Google.Bigtable.Admin.V2.StorageType, enum: true
  field :encryption_config, 6, type: Google.Bigtable.Admin.V2.Cluster.EncryptionConfig
end

defmodule Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_ids: [String.t()]
        }

  defstruct [:cluster_ids]

  field :cluster_ids, 1, repeated: true, type: :string
end

defmodule Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_id: String.t(),
          allow_transactional_writes: boolean
        }

  defstruct [:cluster_id, :allow_transactional_writes]

  field :cluster_id, 1, type: :string
  field :allow_transactional_writes, 2, type: :bool
end

defmodule Google.Bigtable.Admin.V2.AppProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routing_policy: {atom, any},
          name: String.t(),
          etag: String.t(),
          description: String.t()
        }

  defstruct [:routing_policy, :name, :etag, :description]

  oneof :routing_policy, 0
  field :name, 1, type: :string
  field :etag, 2, type: :string
  field :description, 3, type: :string

  field :multi_cluster_routing_use_any, 5,
    type: Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny,
    oneof: 0

  field :single_cluster_routing, 6,
    type: Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting,
    oneof: 0
end
