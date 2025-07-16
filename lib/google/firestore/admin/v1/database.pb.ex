defmodule Google.Firestore.Admin.V1.Database.DatabaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :FIRESTORE_NATIVE, 1
  field :DATASTORE_MODE, 2
end

defmodule Google.Firestore.Admin.V1.Database.ConcurrencyMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONCURRENCY_MODE_UNSPECIFIED, 0
  field :OPTIMISTIC, 1
  field :PESSIMISTIC, 2
  field :OPTIMISTIC_WITH_ENTITY_GROUPS, 3
end

defmodule Google.Firestore.Admin.V1.Database.PointInTimeRecoveryEnablement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED, 0
  field :POINT_IN_TIME_RECOVERY_ENABLED, 1
  field :POINT_IN_TIME_RECOVERY_DISABLED, 2
end

defmodule Google.Firestore.Admin.V1.Database.AppEngineIntegrationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Firestore.Admin.V1.Database.DeleteProtectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DELETE_PROTECTION_STATE_UNSPECIFIED, 0
  field :DELETE_PROTECTION_DISABLED, 1
  field :DELETE_PROTECTION_ENABLED, 2
end

defmodule Google.Firestore.Admin.V1.Database.DatabaseEdition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATABASE_EDITION_UNSPECIFIED, 0
  field :STANDARD, 1
  field :ENTERPRISE, 2
end

defmodule Google.Firestore.Admin.V1.Database.CmekConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false

  field :active_key_version, 2,
    repeated: true,
    type: :string,
    json_name: "activeKeyVersion",
    deprecated: false
end

defmodule Google.Firestore.Admin.V1.Database.SourceInfo.BackupSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.Database.SourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :backup, 1, type: Google.Firestore.Admin.V1.Database.SourceInfo.BackupSource, oneof: 0
  field :operation, 3, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.Database.EncryptionConfig.GoogleDefaultEncryptionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.Database.EncryptionConfig.SourceEncryptionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.Database.EncryptionConfig.CustomerManagedEncryptionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Firestore.Admin.V1.Database.EncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :encryption_type, 0

  field :google_default_encryption, 1,
    type: Google.Firestore.Admin.V1.Database.EncryptionConfig.GoogleDefaultEncryptionOptions,
    json_name: "googleDefaultEncryption",
    oneof: 0

  field :use_source_encryption, 2,
    type: Google.Firestore.Admin.V1.Database.EncryptionConfig.SourceEncryptionOptions,
    json_name: "useSourceEncryption",
    oneof: 0

  field :customer_managed_encryption, 3,
    type: Google.Firestore.Admin.V1.Database.EncryptionConfig.CustomerManagedEncryptionOptions,
    json_name: "customerManagedEncryption",
    oneof: 0
end

defmodule Google.Firestore.Admin.V1.Database.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Firestore.Admin.V1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :location_id, 9, type: :string, json_name: "locationId"
  field :type, 10, type: Google.Firestore.Admin.V1.Database.DatabaseType, enum: true

  field :concurrency_mode, 15,
    type: Google.Firestore.Admin.V1.Database.ConcurrencyMode,
    json_name: "concurrencyMode",
    enum: true

  field :version_retention_period, 17,
    type: Google.Protobuf.Duration,
    json_name: "versionRetentionPeriod",
    deprecated: false

  field :earliest_version_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestVersionTime",
    deprecated: false

  field :point_in_time_recovery_enablement, 21,
    type: Google.Firestore.Admin.V1.Database.PointInTimeRecoveryEnablement,
    json_name: "pointInTimeRecoveryEnablement",
    enum: true

  field :app_engine_integration_mode, 19,
    type: Google.Firestore.Admin.V1.Database.AppEngineIntegrationMode,
    json_name: "appEngineIntegrationMode",
    enum: true

  field :key_prefix, 20, type: :string, json_name: "keyPrefix", deprecated: false

  field :delete_protection_state, 22,
    type: Google.Firestore.Admin.V1.Database.DeleteProtectionState,
    json_name: "deleteProtectionState",
    enum: true

  field :cmek_config, 23,
    type: Google.Firestore.Admin.V1.Database.CmekConfig,
    json_name: "cmekConfig",
    deprecated: false

  field :previous_id, 25, type: :string, json_name: "previousId", deprecated: false

  field :source_info, 26,
    type: Google.Firestore.Admin.V1.Database.SourceInfo,
    json_name: "sourceInfo",
    deprecated: false

  field :tags, 29,
    repeated: true,
    type: Google.Firestore.Admin.V1.Database.TagsEntry,
    map: true,
    deprecated: false

  field :free_tier, 30,
    proto3_optional: true,
    type: :bool,
    json_name: "freeTier",
    deprecated: false

  field :etag, 99, type: :string

  field :database_edition, 28,
    type: Google.Firestore.Admin.V1.Database.DatabaseEdition,
    json_name: "databaseEdition",
    enum: true,
    deprecated: false
end
