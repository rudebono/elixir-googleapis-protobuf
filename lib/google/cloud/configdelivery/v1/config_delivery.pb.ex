defmodule Google.Cloud.Configdelivery.V1.DeletionPropagationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DELETION_PROPAGATION_POLICY_UNSPECIFIED, 0
  field :FOREGROUND, 1
  field :ORPHAN, 2
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackageInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
  field :FAILED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Configdelivery.V1.ClusterInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :WAITING, 1
  field :IN_PROGRESS, 2
  field :STALLED, 3
  field :COMPLETED, 4
  field :ABORTED, 5
  field :CANCELLED, 6
  field :ERROR, 7
  field :UNCHANGED, 8
  field :SKIPPED, 9
end

defmodule Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo.SyncState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SYNC_STATE_UNSPECIFIED, 0
  field :RECONCILING, 1
  field :STALLED, 2
  field :SYNCED, 3
  field :PENDING, 4
  field :ERROR, 5
  field :DELETION_PENDING, 6
  field :DELETING, 7
  field :DELETED, 8
end

defmodule Google.Cloud.Configdelivery.V1.Release.Lifecycle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIFECYCLE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :PUBLISHED, 2
end

defmodule Google.Cloud.Configdelivery.V1.RolloutInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :SUSPENDED, 2
  field :ABORTED, 3
  field :IN_PROGRESS, 5
  field :STALLED, 6
  field :CANCELLED, 7
  field :ABORTING, 8
end

defmodule Google.Cloud.Configdelivery.V1.ResourceBundle.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.ResourceBundle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.ResourceBundle.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListResourceBundlesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListResourceBundlesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_bundles, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.ResourceBundle,
    json_name: "resourceBundles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.GetResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.CreateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :resource_bundle_id, 2, type: :string, json_name: "resourceBundleId", deprecated: false

  field :resource_bundle, 3,
    type: Google.Cloud.Configdelivery.V1.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.UpdateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource_bundle, 2,
    type: Google.Cloud.Configdelivery.V1.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.DeleteResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.ResourceBundleSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :resource_bundle, 1,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.ResourceBundleTag,
    json_name: "resourceBundle",
    oneof: 0

  field :cloud_build_repository, 3,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.CloudBuildRepository,
    json_name: "cloudBuildRepository",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.ResourceBundleTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.CloudBuildRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :variants, 0

  field :variants_pattern, 5,
    type: :string,
    json_name: "variantsPattern",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :tag, 3, type: :string, deprecated: false
  field :service_account, 4, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :fleet, 1, type: Google.Cloud.Configdelivery.V1.Fleet, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.VariantSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :variant_name_template, 1,
    type: :string,
    json_name: "variantNameTemplate",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.LabelsEntry,
    map: true,
    deprecated: false

  field :resource_bundle_selector, 5,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.ResourceBundleSelector,
    json_name: "resourceBundleSelector",
    deprecated: false

  field :target, 9, type: Google.Cloud.Configdelivery.V1.FleetPackage.Target, deprecated: false

  field :rollout_strategy, 10,
    type: Google.Cloud.Configdelivery.V1.RolloutStrategy,
    json_name: "rolloutStrategy",
    deprecated: false

  field :variant_selector, 11,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.VariantSelector,
    json_name: "variantSelector",
    deprecated: false

  field :info, 13, type: Google.Cloud.Configdelivery.V1.FleetPackageInfo, deprecated: false

  field :deletion_propagation_policy, 15,
    type: Google.Cloud.Configdelivery.V1.DeletionPropagationPolicy,
    json_name: "deletionPropagationPolicy",
    enum: true,
    deprecated: false

  field :state, 16,
    type: Google.Cloud.Configdelivery.V1.FleetPackage.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :active_rollout, 1, type: :string, json_name: "activeRollout", deprecated: false

  field :last_completed_rollout, 2,
    type: :string,
    json_name: "lastCompletedRollout",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Configdelivery.V1.FleetPackageInfo.State,
    enum: true,
    deprecated: false

  field :errors, 6,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.FleetPackageError,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.FleetPackageError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ClusterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :membership, 1, type: :string, deprecated: false

  field :desired, 2,
    type: Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo,
    deprecated: false

  field :initial, 3,
    type: Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo,
    deprecated: false

  field :current, 4,
    type: Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Configdelivery.V1.ClusterInfo.State,
    enum: true,
    deprecated: false

  field :messages, 6, repeated: true, type: :string, deprecated: false
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
  field :variant, 3, type: :string, deprecated: false

  field :sync_state, 4,
    type: Google.Cloud.Configdelivery.V1.ResourceBundleDeploymentInfo.SyncState,
    json_name: "syncState",
    enum: true,
    deprecated: false

  field :messages, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.Fleet.LabelSelector.MatchLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.Fleet.LabelSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :match_labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.Fleet.LabelSelector.MatchLabelsEntry,
    json_name: "matchLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :selector, 2, type: Google.Cloud.Configdelivery.V1.Fleet.LabelSelector, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.AllAtOnceStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Configdelivery.V1.RollingStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_concurrent, 1, type: :int32, json_name: "maxConcurrent", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.RolloutStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once, 1,
    type: Google.Cloud.Configdelivery.V1.AllAtOnceStrategy,
    json_name: "allAtOnce",
    oneof: 0

  field :rolling, 2, type: Google.Cloud.Configdelivery.V1.RollingStrategy, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1.RolloutStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once_strategy_info, 1,
    type: Google.Cloud.Configdelivery.V1.AllAtOnceStrategyInfo,
    json_name: "allAtOnceStrategyInfo",
    oneof: 0

  field :rolling_strategy_info, 2,
    type: Google.Cloud.Configdelivery.V1.RollingStrategyInfo,
    json_name: "rollingStrategyInfo",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1.AllAtOnceStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.RollingStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListFleetPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListFleetPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fleet_packages, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.FleetPackage,
    json_name: "fleetPackages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.GetFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.CreateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :fleet_package_id, 2, type: :string, json_name: "fleetPackageId", deprecated: false

  field :fleet_package, 3,
    type: Google.Cloud.Configdelivery.V1.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.UpdateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :fleet_package, 2,
    type: Google.Cloud.Configdelivery.V1.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.DeleteFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.Release do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.Release.LabelsEntry,
    map: true,
    deprecated: false

  field :lifecycle, 5,
    type: Google.Cloud.Configdelivery.V1.Release.Lifecycle,
    enum: true,
    deprecated: false

  field :version, 6, type: :string, deprecated: false

  field :publish_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false

  field :info, 9, type: Google.Cloud.Configdelivery.V1.ReleaseInfo, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.Variant.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.Variant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.Variant.LabelsEntry,
    map: true,
    deprecated: false

  field :resources, 2, repeated: true, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Cloud.Configdelivery.V1.Variant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.GetVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.CreateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :variant_id, 2, type: :string, json_name: "variantId", deprecated: false
  field :variant, 3, type: Google.Cloud.Configdelivery.V1.Variant, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.UpdateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :variant, 2, type: Google.Cloud.Configdelivery.V1.Variant, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.DeleteVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ReleaseInfo.VariantOciImagePathsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1.ReleaseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oci_image_path, 1, type: :string, json_name: "ociImagePath", deprecated: false

  field :variant_oci_image_paths, 2,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1.ReleaseInfo.VariantOciImagePathsEntry,
    json_name: "variantOciImagePaths",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :releases, 1, repeated: true, type: Google.Cloud.Configdelivery.V1.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Configdelivery.V1.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.UpdateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :release, 2, type: Google.Cloud.Configdelivery.V1.Release, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.DeleteReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollouts, 1, repeated: true, type: Google.Cloud.Configdelivery.V1.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.RolloutInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Configdelivery.V1.RolloutInfo.State,
    enum: true,
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :message, 6, type: :string, deprecated: false

  field :rollout_strategy_info, 7,
    type: Google.Cloud.Configdelivery.V1.RolloutStrategyInfo,
    json_name: "rolloutStrategyInfo",
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :release, 2, type: :string, deprecated: false

  field :rollout_strategy, 4,
    type: Google.Cloud.Configdelivery.V1.RolloutStrategy,
    json_name: "rolloutStrategy"

  field :info, 5, type: Google.Cloud.Configdelivery.V1.RolloutInfo

  field :deletion_propagation_policy, 7,
    type: Google.Cloud.Configdelivery.V1.DeletionPropagationPolicy,
    json_name: "deletionPropagationPolicy",
    enum: true

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.SuspendRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ResumeRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.AbortRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1.ConfigDelivery.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.configdelivery.v1.ConfigDelivery",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListResourceBundles,
      Google.Cloud.Configdelivery.V1.ListResourceBundlesRequest,
      Google.Cloud.Configdelivery.V1.ListResourceBundlesResponse

  rpc :GetResourceBundle,
      Google.Cloud.Configdelivery.V1.GetResourceBundleRequest,
      Google.Cloud.Configdelivery.V1.ResourceBundle

  rpc :CreateResourceBundle,
      Google.Cloud.Configdelivery.V1.CreateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :UpdateResourceBundle,
      Google.Cloud.Configdelivery.V1.UpdateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :DeleteResourceBundle,
      Google.Cloud.Configdelivery.V1.DeleteResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :ListFleetPackages,
      Google.Cloud.Configdelivery.V1.ListFleetPackagesRequest,
      Google.Cloud.Configdelivery.V1.ListFleetPackagesResponse

  rpc :GetFleetPackage,
      Google.Cloud.Configdelivery.V1.GetFleetPackageRequest,
      Google.Cloud.Configdelivery.V1.FleetPackage

  rpc :CreateFleetPackage,
      Google.Cloud.Configdelivery.V1.CreateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :UpdateFleetPackage,
      Google.Cloud.Configdelivery.V1.UpdateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :DeleteFleetPackage,
      Google.Cloud.Configdelivery.V1.DeleteFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :ListReleases,
      Google.Cloud.Configdelivery.V1.ListReleasesRequest,
      Google.Cloud.Configdelivery.V1.ListReleasesResponse

  rpc :GetRelease,
      Google.Cloud.Configdelivery.V1.GetReleaseRequest,
      Google.Cloud.Configdelivery.V1.Release

  rpc :CreateRelease,
      Google.Cloud.Configdelivery.V1.CreateReleaseRequest,
      Google.Longrunning.Operation

  rpc :UpdateRelease,
      Google.Cloud.Configdelivery.V1.UpdateReleaseRequest,
      Google.Longrunning.Operation

  rpc :DeleteRelease,
      Google.Cloud.Configdelivery.V1.DeleteReleaseRequest,
      Google.Longrunning.Operation

  rpc :ListVariants,
      Google.Cloud.Configdelivery.V1.ListVariantsRequest,
      Google.Cloud.Configdelivery.V1.ListVariantsResponse

  rpc :GetVariant,
      Google.Cloud.Configdelivery.V1.GetVariantRequest,
      Google.Cloud.Configdelivery.V1.Variant

  rpc :CreateVariant,
      Google.Cloud.Configdelivery.V1.CreateVariantRequest,
      Google.Longrunning.Operation

  rpc :UpdateVariant,
      Google.Cloud.Configdelivery.V1.UpdateVariantRequest,
      Google.Longrunning.Operation

  rpc :DeleteVariant,
      Google.Cloud.Configdelivery.V1.DeleteVariantRequest,
      Google.Longrunning.Operation

  rpc :ListRollouts,
      Google.Cloud.Configdelivery.V1.ListRolloutsRequest,
      Google.Cloud.Configdelivery.V1.ListRolloutsResponse

  rpc :GetRollout,
      Google.Cloud.Configdelivery.V1.GetRolloutRequest,
      Google.Cloud.Configdelivery.V1.Rollout

  rpc :SuspendRollout,
      Google.Cloud.Configdelivery.V1.SuspendRolloutRequest,
      Google.Longrunning.Operation

  rpc :ResumeRollout,
      Google.Cloud.Configdelivery.V1.ResumeRolloutRequest,
      Google.Longrunning.Operation

  rpc :AbortRollout,
      Google.Cloud.Configdelivery.V1.AbortRolloutRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Configdelivery.V1.ConfigDelivery.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Configdelivery.V1.ConfigDelivery.Service
end
