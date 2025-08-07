defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.UnitState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_STATE_UNSPECIFIED, 0
  field :UNIT_STATE_NOT_PROVISIONED, 1
  field :UNIT_STATE_PROVISIONING, 2
  field :UNIT_STATE_UPDATING, 3
  field :UNIT_STATE_DEPROVISIONING, 4
  field :UNIT_STATE_READY, 5
  field :UNIT_STATE_ERROR, 6
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.ManagementMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MANAGEMENT_MODE_UNSPECIFIED, 0
  field :MANAGEMENT_MODE_USER, 1
  field :MANAGEMENT_MODE_SYSTEM, 2
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.SystemManagedState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SYSTEM_MANAGED_STATE_UNSPECIFIED, 0
  field :SYSTEM_MANAGED_STATE_ACTIVE, 1
  field :SYSTEM_MANAGED_STATE_INACTIVE, 2
  field :SYSTEM_MANAGED_STATE_DECOMMISSIONED, 3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.UnitOperationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_OPERATION_STATE_UNKNOWN, 0
  field :UNIT_OPERATION_STATE_PENDING, 1
  field :UNIT_OPERATION_STATE_SCHEDULED, 2
  field :UNIT_OPERATION_STATE_RUNNING, 4
  field :UNIT_OPERATION_STATE_SUCCEEDED, 5
  field :UNIT_OPERATION_STATE_FAILED, 6
  field :UNIT_OPERATION_STATE_CANCELLED, 7
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :locations, 4,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Location,
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Saas.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :consumer_resource, 2, type: :string, json_name: "consumerResource", deprecated: false
  field :saas, 3, type: :string, deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Tenant.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :default_release, 2, type: :string, json_name: "defaultRelease", deprecated: false

  field :dependencies, 4,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Dependency,
    deprecated: false

  field :input_variable_mappings, 5,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.VariableMapping,
    json_name: "inputVariableMappings",
    deprecated: false

  field :output_variable_mappings, 6,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.VariableMapping,
    json_name: "outputVariableMappings",
    deprecated: false

  field :saas, 8, type: :string, deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitKind.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.MaintenanceSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pinned_until_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "pinnedUntilTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :unit_kind, 2, type: :string, json_name: "unitKind", deprecated: false
  field :release, 13, type: :string, deprecated: false
  field :tenant, 4, type: :string, deprecated: false

  field :ongoing_operations, 5,
    repeated: true,
    type: :string,
    json_name: "ongoingOperations",
    deprecated: false

  field :pending_operations, 6,
    repeated: true,
    type: :string,
    json_name: "pendingOperations",
    deprecated: false

  field :scheduled_operations, 24,
    repeated: true,
    type: :string,
    json_name: "scheduledOperations",
    deprecated: false

  field :dependents, 7,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitDependency,
    deprecated: false

  field :dependencies, 8,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitDependency,
    deprecated: false

  field :input_variables, 9,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "inputVariables",
    deprecated: false

  field :output_variables, 10,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "outputVariables",
    deprecated: false

  field :maintenance, 14,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.MaintenanceSettings,
    deprecated: false

  field :state, 16,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.UnitState,
    enum: true,
    deprecated: false

  field :conditions, 20,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitCondition,
    deprecated: false

  field :management_mode, 22,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.ManagementMode,
    json_name: "managementMode",
    enum: true,
    deprecated: false

  field :system_managed_state, 25,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.SystemManagedState,
    json_name: "systemManagedState",
    enum: true,
    deprecated: false

  field :system_cleanup_at, 26,
    type: Google.Protobuf.Timestamp,
    json_name: "systemCleanupAt",
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Unit.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitDependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alias, 1, type: :string, deprecated: false
  field :unit, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :unit_operation_type, 0

  field :provision, 8,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Provision,
    oneof: 0,
    deprecated: false

  field :upgrade, 9,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Upgrade,
    oneof: 0,
    deprecated: false

  field :deprovision, 10,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Deprovision,
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :unit, 2, type: :string, deprecated: false

  field :parent_unit_operation, 3,
    type: :string,
    json_name: "parentUnitOperation",
    deprecated: false

  field :rollout, 4, type: :string, deprecated: false
  field :cancel, 5, type: :bool, deprecated: false

  field :state, 6,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.UnitOperationState,
    enum: true,
    deprecated: false

  field :conditions, 7,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationCondition,
    deprecated: false

  field :schedule, 12,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Schedule,
    deprecated: false

  field :engine_state, 14, type: :string, json_name: "engineState", deprecated: false

  field :error_category, 15,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperationErrorCategory,
    json_name: "errorCategory",
    enum: true,
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitOperation.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Provision do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release, 1, type: :string, deprecated: false

  field :input_variables, 3,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "inputVariables",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Deprovision do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Upgrade do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release, 1, type: :string, deprecated: false

  field :input_variables, 2,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "inputVariables",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.ReleaseRequirements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :upgradeable_from_releases, 1,
    repeated: true,
    type: :string,
    json_name: "upgradeableFromReleases",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :unit_kind, 2, type: :string, json_name: "unitKind", deprecated: false

  field :blueprint, 3,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Blueprint,
    deprecated: false

  field :release_requirements, 4,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.ReleaseRequirements,
    json_name: "releaseRequirements",
    deprecated: false

  field :input_variables, 5,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "inputVariables",
    deprecated: false

  field :output_variables, 6,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "outputVariables",
    deprecated: false

  field :input_variable_defaults, 7,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UnitVariable,
    json_name: "inputVariableDefaults",
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Release.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.VariableMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mapping_type, 0

  field :from, 2,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.FromMapping,
    oneof: 0,
    deprecated: false

  field :to, 3,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ToMapping,
    oneof: 0,
    deprecated: false

  field :variable, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.FromMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency, 1, type: :string, deprecated: false
  field :output_variable, 2, type: :string, json_name: "outputVariable", deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ToMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency, 1, type: :string, deprecated: false
  field :input_variable, 2, type: :string, json_name: "inputVariable", deprecated: false
  field :ignore_for_lookup, 3, type: :bool, json_name: "ignoreForLookup", deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Dependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit_kind, 1, type: :string, json_name: "unitKind", deprecated: false
  field :alias, 2, type: :string, deprecated: false
end
