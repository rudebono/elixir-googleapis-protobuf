defmodule Google.Cloud.Secretmanager.V1.SecretVersion.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ENABLED | :DISABLED | :DESTROYED

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DESTROYED, 3
end
defmodule Google.Cloud.Secretmanager.V1.Secret.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Secretmanager.V1.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expiration:
            {:expire_time, Google.Protobuf.Timestamp.t() | nil}
            | {:ttl, Google.Protobuf.Duration.t() | nil},
          name: String.t(),
          replication: Google.Cloud.Secretmanager.V1.Replication.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          topics: [Google.Cloud.Secretmanager.V1.Topic.t()],
          etag: String.t(),
          rotation: Google.Cloud.Secretmanager.V1.Rotation.t() | nil
        }

  defstruct expiration: nil,
            name: "",
            replication: nil,
            create_time: nil,
            labels: %{},
            topics: [],
            etag: "",
            rotation: nil

  oneof :expiration, 0

  field :name, 1, type: :string, deprecated: false
  field :replication, 2, type: Google.Cloud.Secretmanager.V1.Replication, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1.Secret.LabelsEntry,
    map: true

  field :topics, 5, repeated: true, type: Google.Cloud.Secretmanager.V1.Topic, deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :ttl, 7, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :etag, 8, type: :string, deprecated: false
  field :rotation, 9, type: Google.Cloud.Secretmanager.V1.Rotation, deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.SecretVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          destroy_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Secretmanager.V1.SecretVersion.State.t(),
          replication_status: Google.Cloud.Secretmanager.V1.ReplicationStatus.t() | nil,
          etag: String.t()
        }

  defstruct name: "",
            create_time: nil,
            destroy_time: nil,
            state: :STATE_UNSPECIFIED,
            replication_status: nil,
            etag: ""

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :destroy_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "destroyTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Secretmanager.V1.SecretVersion.State,
    enum: true,
    deprecated: false

  field :replication_status, 5,
    type: Google.Cloud.Secretmanager.V1.ReplicationStatus,
    json_name: "replicationStatus"

  field :etag, 6, type: :string, deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Replication.Automatic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_managed_encryption:
            Google.Cloud.Secretmanager.V1.CustomerManagedEncryption.t() | nil
        }

  defstruct customer_managed_encryption: nil

  field :customer_managed_encryption, 1,
    type: Google.Cloud.Secretmanager.V1.CustomerManagedEncryption,
    json_name: "customerManagedEncryption",
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Replication.UserManaged.Replica do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          customer_managed_encryption:
            Google.Cloud.Secretmanager.V1.CustomerManagedEncryption.t() | nil
        }

  defstruct location: "",
            customer_managed_encryption: nil

  field :location, 1, type: :string

  field :customer_managed_encryption, 2,
    type: Google.Cloud.Secretmanager.V1.CustomerManagedEncryption,
    json_name: "customerManagedEncryption",
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Replication.UserManaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replicas: [Google.Cloud.Secretmanager.V1.Replication.UserManaged.Replica.t()]
        }

  defstruct replicas: []

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1.Replication.UserManaged.Replica,
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Replication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replication:
            {:automatic, Google.Cloud.Secretmanager.V1.Replication.Automatic.t() | nil}
            | {:user_managed, Google.Cloud.Secretmanager.V1.Replication.UserManaged.t() | nil}
        }

  defstruct replication: nil

  oneof :replication, 0

  field :automatic, 1, type: Google.Cloud.Secretmanager.V1.Replication.Automatic, oneof: 0

  field :user_managed, 2,
    type: Google.Cloud.Secretmanager.V1.Replication.UserManaged,
    json_name: "userManaged",
    oneof: 0
end
defmodule Google.Cloud.Secretmanager.V1.CustomerManagedEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct kms_key_name: ""

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.ReplicationStatus.AutomaticStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_managed_encryption:
            Google.Cloud.Secretmanager.V1.CustomerManagedEncryptionStatus.t() | nil
        }

  defstruct customer_managed_encryption: nil

  field :customer_managed_encryption, 1,
    type: Google.Cloud.Secretmanager.V1.CustomerManagedEncryptionStatus,
    json_name: "customerManagedEncryption",
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus.ReplicaStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          customer_managed_encryption:
            Google.Cloud.Secretmanager.V1.CustomerManagedEncryptionStatus.t() | nil
        }

  defstruct location: "",
            customer_managed_encryption: nil

  field :location, 1, type: :string, deprecated: false

  field :customer_managed_encryption, 2,
    type: Google.Cloud.Secretmanager.V1.CustomerManagedEncryptionStatus,
    json_name: "customerManagedEncryption",
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replicas: [
            Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus.ReplicaStatus.t()
          ]
        }

  defstruct replicas: []

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus.ReplicaStatus,
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.ReplicationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replication_status:
            {:automatic,
             Google.Cloud.Secretmanager.V1.ReplicationStatus.AutomaticStatus.t() | nil}
            | {:user_managed,
               Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus.t() | nil}
        }

  defstruct replication_status: nil

  oneof :replication_status, 0

  field :automatic, 1,
    type: Google.Cloud.Secretmanager.V1.ReplicationStatus.AutomaticStatus,
    oneof: 0

  field :user_managed, 2,
    type: Google.Cloud.Secretmanager.V1.ReplicationStatus.UserManagedStatus,
    json_name: "userManaged",
    oneof: 0
end
defmodule Google.Cloud.Secretmanager.V1.CustomerManagedEncryptionStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_version_name: String.t()
        }

  defstruct kms_key_version_name: ""

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName", deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Topic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.Rotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_rotation_time: Google.Protobuf.Timestamp.t() | nil,
          rotation_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct next_rotation_time: nil,
            rotation_period: nil

  field :next_rotation_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRotationTime",
    deprecated: false

  field :rotation_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "rotationPeriod",
    deprecated: false
end
defmodule Google.Cloud.Secretmanager.V1.SecretPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct data: ""

  field :data, 1, type: :bytes
end
