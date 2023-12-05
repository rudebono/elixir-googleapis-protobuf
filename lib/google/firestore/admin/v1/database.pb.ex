defmodule Google.Firestore.Admin.V1.Database.DatabaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :FIRESTORE_NATIVE, 1
  field :DATASTORE_MODE, 2
end

defmodule Google.Firestore.Admin.V1.Database.ConcurrencyMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONCURRENCY_MODE_UNSPECIFIED, 0
  field :OPTIMISTIC, 1
  field :PESSIMISTIC, 2
  field :OPTIMISTIC_WITH_ENTITY_GROUPS, 3
end

defmodule Google.Firestore.Admin.V1.Database.PointInTimeRecoveryEnablement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED, 0
  field :POINT_IN_TIME_RECOVERY_ENABLED, 1
  field :POINT_IN_TIME_RECOVERY_DISABLED, 2
end

defmodule Google.Firestore.Admin.V1.Database.AppEngineIntegrationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Firestore.Admin.V1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
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
  field :etag, 99, type: :string
end