defmodule Google.Cloud.Secretmanager.V1beta2.SecretVersion.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DESTROYED, 3
end

defmodule Google.Cloud.Secretmanager.V1beta2.Secret.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1beta2.Secret.VersionAliasesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Secretmanager.V1beta2.Secret.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Secretmanager.V1beta2.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :expiration, 0

  field :name, 1, type: :string, deprecated: false
  field :replication, 2, type: Google.Cloud.Secretmanager.V1beta2.Replication, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.Secret.LabelsEntry,
    map: true

  field :topics, 5,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.Topic,
    deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :ttl, 7, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :etag, 8, type: :string, deprecated: false
  field :rotation, 9, type: Google.Cloud.Secretmanager.V1beta2.Rotation, deprecated: false

  field :version_aliases, 11,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.Secret.VersionAliasesEntry,
    json_name: "versionAliases",
    map: true,
    deprecated: false

  field :annotations, 13,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.Secret.AnnotationsEntry,
    map: true,
    deprecated: false

  field :version_destroy_ttl, 14,
    type: Google.Protobuf.Duration,
    json_name: "versionDestroyTtl",
    deprecated: false

  field :customer_managed_encryption, 15,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryption,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.SecretVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
    type: Google.Cloud.Secretmanager.V1beta2.SecretVersion.State,
    enum: true,
    deprecated: false

  field :replication_status, 5,
    type: Google.Cloud.Secretmanager.V1beta2.ReplicationStatus,
    json_name: "replicationStatus"

  field :etag, 6, type: :string, deprecated: false

  field :client_specified_payload_checksum, 7,
    type: :bool,
    json_name: "clientSpecifiedPayloadChecksum",
    deprecated: false

  field :scheduled_destroy_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduledDestroyTime",
    deprecated: false

  field :customer_managed_encryption, 9,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryptionStatus,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Replication.Automatic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_managed_encryption, 1,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryption,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Replication.UserManaged.Replica do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location, 1, type: :string

  field :customer_managed_encryption, 2,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryption,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Replication.UserManaged do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.Replication.UserManaged.Replica,
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Replication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :replication, 0

  field :automatic, 1, type: Google.Cloud.Secretmanager.V1beta2.Replication.Automatic, oneof: 0

  field :user_managed, 2,
    type: Google.Cloud.Secretmanager.V1beta2.Replication.UserManaged,
    json_name: "userManaged",
    oneof: 0
end

defmodule Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.AutomaticStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_managed_encryption, 1,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryptionStatus,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.UserManagedStatus.ReplicaStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :customer_managed_encryption, 2,
    type: Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryptionStatus,
    json_name: "customerManagedEncryption",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.UserManagedStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.UserManagedStatus.ReplicaStatus,
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.ReplicationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :replication_status, 0

  field :automatic, 1,
    type: Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.AutomaticStatus,
    oneof: 0

  field :user_managed, 2,
    type: Google.Cloud.Secretmanager.V1beta2.ReplicationStatus.UserManagedStatus,
    json_name: "userManaged",
    oneof: 0
end

defmodule Google.Cloud.Secretmanager.V1beta2.CustomerManagedEncryptionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName", deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Topic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.Rotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :next_rotation_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRotationTime",
    deprecated: false

  field :rotation_period, 2,
    type: Google.Protobuf.Duration,
    json_name: "rotationPeriod",
    deprecated: false
end

defmodule Google.Cloud.Secretmanager.V1beta2.SecretPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data, 1, type: :bytes

  field :data_crc32c, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "dataCrc32c",
    deprecated: false
end
