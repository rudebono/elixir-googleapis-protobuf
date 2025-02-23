defmodule Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructureProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
  field :FAILED, 6
  field :MAINTENANCE_IN_PROGRESS, 7
end

defmodule Google.Cloud.Oracledatabase.V1.MaintenanceWindow.MaintenanceWindowPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED, 0
  field :CUSTOM_PREFERENCE, 1
  field :NO_PREFERENCE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.MaintenanceWindow.PatchingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PATCHING_MODE_UNSPECIFIED, 0
  field :ROLLING, 1
  field :NON_ROLLING, 2
end

defmodule Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :gcp_oracle_zone, 8, type: :string, json_name: "gcpOracleZone", deprecated: false
  field :entitlement_id, 4, type: :string, json_name: "entitlementId", deprecated: false

  field :properties, 5,
    type: Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructureProperties,
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructure.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructureProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false
  field :compute_count, 2, type: :int32, json_name: "computeCount", deprecated: false
  field :storage_count, 3, type: :int32, json_name: "storageCount", deprecated: false

  field :total_storage_size_gb, 4,
    type: :int32,
    json_name: "totalStorageSizeGb",
    deprecated: false

  field :available_storage_size_gb, 5,
    type: :int32,
    json_name: "availableStorageSizeGb",
    deprecated: false

  field :maintenance_window, 6,
    type: Google.Cloud.Oracledatabase.V1.MaintenanceWindow,
    json_name: "maintenanceWindow",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Oracledatabase.V1.CloudExadataInfrastructureProperties.State,
    enum: true,
    deprecated: false

  field :shape, 8, type: :string, deprecated: false
  field :oci_url, 9, type: :string, json_name: "ociUrl", deprecated: false
  field :cpu_count, 10, type: :int32, json_name: "cpuCount", deprecated: false
  field :max_cpu_count, 11, type: :int32, json_name: "maxCpuCount", deprecated: false
  field :memory_size_gb, 12, type: :int32, json_name: "memorySizeGb", deprecated: false
  field :max_memory_gb, 13, type: :int32, json_name: "maxMemoryGb", deprecated: false

  field :db_node_storage_size_gb, 14,
    type: :int32,
    json_name: "dbNodeStorageSizeGb",
    deprecated: false

  field :max_db_node_storage_size_gb, 15,
    type: :int32,
    json_name: "maxDbNodeStorageSizeGb",
    deprecated: false

  field :data_storage_size_tb, 16,
    type: :double,
    json_name: "dataStorageSizeTb",
    deprecated: false

  field :max_data_storage_tb, 17, type: :double, json_name: "maxDataStorageTb", deprecated: false

  field :activated_storage_count, 18,
    type: :int32,
    json_name: "activatedStorageCount",
    deprecated: false

  field :additional_storage_count, 19,
    type: :int32,
    json_name: "additionalStorageCount",
    deprecated: false

  field :db_server_version, 20, type: :string, json_name: "dbServerVersion", deprecated: false

  field :storage_server_version, 21,
    type: :string,
    json_name: "storageServerVersion",
    deprecated: false

  field :next_maintenance_run_id, 22,
    type: :string,
    json_name: "nextMaintenanceRunId",
    deprecated: false

  field :next_maintenance_run_time, 23,
    type: Google.Protobuf.Timestamp,
    json_name: "nextMaintenanceRunTime",
    deprecated: false

  field :next_security_maintenance_run_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "nextSecurityMaintenanceRunTime",
    deprecated: false

  field :customer_contacts, 25,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CustomerContact,
    json_name: "customerContacts",
    deprecated: false

  field :monthly_storage_server_version, 26,
    type: :string,
    json_name: "monthlyStorageServerVersion",
    deprecated: false

  field :monthly_db_server_version, 27,
    type: :string,
    json_name: "monthlyDbServerVersion",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preference, 1,
    type: Google.Cloud.Oracledatabase.V1.MaintenanceWindow.MaintenanceWindowPreference,
    enum: true,
    deprecated: false

  field :months, 2, repeated: true, type: Google.Type.Month, enum: true, deprecated: false

  field :weeks_of_month, 3,
    repeated: true,
    type: :int32,
    json_name: "weeksOfMonth",
    deprecated: false

  field :days_of_week, 4,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "daysOfWeek",
    enum: true,
    deprecated: false

  field :hours_of_day, 5, repeated: true, type: :int32, json_name: "hoursOfDay", deprecated: false
  field :lead_time_week, 6, type: :int32, json_name: "leadTimeWeek", deprecated: false

  field :patching_mode, 7,
    type: Google.Cloud.Oracledatabase.V1.MaintenanceWindow.PatchingMode,
    json_name: "patchingMode",
    enum: true,
    deprecated: false

  field :custom_action_timeout_mins, 8,
    type: :int32,
    json_name: "customActionTimeoutMins",
    deprecated: false

  field :is_custom_action_timeout_enabled, 9,
    type: :bool,
    json_name: "isCustomActionTimeoutEnabled",
    deprecated: false
end
