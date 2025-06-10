defmodule Google.Cloud.Configdelivery.V1alpha.DeletionPropagationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DELETION_PROPAGATION_POLICY_UNSPECIFIED, 0
  field :FOREGROUND, 1
  field :ORPHAN, 2
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackageInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
  field :FAILED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Configdelivery.V1alpha.ClusterInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo.SyncState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Configdelivery.V1alpha.Release.Lifecycle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LIFECYCLE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :PUBLISHED, 2
end

defmodule Google.Cloud.Configdelivery.V1alpha.RolloutInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :SUSPENDED, 2
  field :ABORTED, 3
  field :IN_PROGRESS, 5
  field :STALLED, 6
  field :CANCELLED, 7
  field :ABORTING, 8
end

defmodule Google.Cloud.Configdelivery.V1alpha.ResourceBundle.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.ResourceBundle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundle.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListResourceBundlesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListResourceBundlesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_bundles, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundle,
    json_name: "resourceBundles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.GetResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.CreateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :resource_bundle_id, 2, type: :string, json_name: "resourceBundleId", deprecated: false

  field :resource_bundle, 3,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.UpdateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource_bundle, 2,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.DeleteResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.ResourceBundleSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :resource_bundle, 1,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.ResourceBundleTag,
    json_name: "resourceBundle",
    oneof: 0

  field :cloud_build_repository, 3,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.CloudBuildRepository,
    json_name: "cloudBuildRepository",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.ResourceBundleTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.CloudBuildRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :fleet, 1, type: Google.Cloud.Configdelivery.V1alpha.Fleet, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.VariantSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :strategy, 0

  field :variant_name_template, 1,
    type: :string,
    json_name: "variantNameTemplate",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.LabelsEntry,
    map: true,
    deprecated: false

  field :resource_bundle_selector, 5,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.ResourceBundleSelector,
    json_name: "resourceBundleSelector",
    deprecated: false

  field :target, 9,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.Target,
    deprecated: false

  field :rollout_strategy, 10,
    type: Google.Cloud.Configdelivery.V1alpha.RolloutStrategy,
    json_name: "rolloutStrategy",
    deprecated: false

  field :variant_selector, 11,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.VariantSelector,
    json_name: "variantSelector",
    deprecated: false

  field :info, 13, type: Google.Cloud.Configdelivery.V1alpha.FleetPackageInfo, deprecated: false

  field :deletion_propagation_policy, 15,
    type: Google.Cloud.Configdelivery.V1alpha.DeletionPropagationPolicy,
    json_name: "deletionPropagationPolicy",
    enum: true,
    deprecated: false

  field :state, 16,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :active_rollout, 1, type: :string, json_name: "activeRollout", deprecated: false

  field :last_completed_rollout, 2,
    type: :string,
    json_name: "lastCompletedRollout",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackageInfo.State,
    enum: true,
    deprecated: false

  field :errors, 6,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackageError,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.FleetPackageError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ClusterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :membership, 1, type: :string, deprecated: false

  field :desired, 2,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo,
    deprecated: false

  field :initial, 3,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo,
    deprecated: false

  field :current, 4,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Configdelivery.V1alpha.ClusterInfo.State,
    enum: true,
    deprecated: false

  field :messages, 6, repeated: true, type: :string, deprecated: false
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :release, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
  field :variant, 3, type: :string, deprecated: false

  field :sync_state, 4,
    type: Google.Cloud.Configdelivery.V1alpha.ResourceBundleDeploymentInfo.SyncState,
    json_name: "syncState",
    enum: true,
    deprecated: false

  field :messages, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.Fleet.LabelSelector.MatchLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.Fleet.LabelSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :match_labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.Fleet.LabelSelector.MatchLabelsEntry,
    json_name: "matchLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 1, type: :string, deprecated: false

  field :selector, 2,
    type: Google.Cloud.Configdelivery.V1alpha.Fleet.LabelSelector,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.AllAtOnceStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Configdelivery.V1alpha.RollingStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_concurrent, 1, type: :int32, json_name: "maxConcurrent", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.RolloutStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once, 1,
    type: Google.Cloud.Configdelivery.V1alpha.AllAtOnceStrategy,
    json_name: "allAtOnce",
    oneof: 0

  field :rolling, 2, type: Google.Cloud.Configdelivery.V1alpha.RollingStrategy, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1alpha.RolloutStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once_strategy_info, 1,
    type: Google.Cloud.Configdelivery.V1alpha.AllAtOnceStrategyInfo,
    json_name: "allAtOnceStrategyInfo",
    oneof: 0

  field :rolling_strategy_info, 2,
    type: Google.Cloud.Configdelivery.V1alpha.RollingStrategyInfo,
    json_name: "rollingStrategyInfo",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1alpha.AllAtOnceStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.RollingStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListFleetPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListFleetPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fleet_packages, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage,
    json_name: "fleetPackages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.GetFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.CreateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :fleet_package_id, 2, type: :string, json_name: "fleetPackageId", deprecated: false

  field :fleet_package, 3,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.UpdateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :fleet_package, 2,
    type: Google.Cloud.Configdelivery.V1alpha.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.DeleteFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Configdelivery.V1alpha.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.Release do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Configdelivery.V1alpha.Release.LabelsEntry,
    map: true,
    deprecated: false

  field :lifecycle, 5,
    type: Google.Cloud.Configdelivery.V1alpha.Release.Lifecycle,
    enum: true,
    deprecated: false

  field :version, 6, type: :string, deprecated: false

  field :publish_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false

  field :info, 9, type: Google.Cloud.Configdelivery.V1alpha.ReleaseInfo, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.Variant.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.Variant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.Variant.LabelsEntry,
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

defmodule Google.Cloud.Configdelivery.V1alpha.ListVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Cloud.Configdelivery.V1alpha.Variant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.GetVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.CreateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :variant_id, 2, type: :string, json_name: "variantId", deprecated: false
  field :variant, 3, type: Google.Cloud.Configdelivery.V1alpha.Variant, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.UpdateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :variant, 2, type: Google.Cloud.Configdelivery.V1alpha.Variant, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.DeleteVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ReleaseInfo.VariantOciImagePathsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1alpha.ReleaseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oci_image_path, 1, type: :string, json_name: "ociImagePath", deprecated: false

  field :variant_oci_image_paths, 2,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1alpha.ReleaseInfo.VariantOciImagePathsEntry,
    json_name: "variantOciImagePaths",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :releases, 1, repeated: true, type: Google.Cloud.Configdelivery.V1alpha.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Configdelivery.V1alpha.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.UpdateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :release, 2, type: Google.Cloud.Configdelivery.V1alpha.Release, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.DeleteReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rollouts, 1, repeated: true, type: Google.Cloud.Configdelivery.V1alpha.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.RolloutInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Configdelivery.V1alpha.RolloutInfo.State,
    enum: true,
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :message, 6, type: :string, deprecated: false

  field :rollout_strategy_info, 7,
    type: Google.Cloud.Configdelivery.V1alpha.RolloutStrategyInfo,
    json_name: "rolloutStrategyInfo",
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :release, 2, type: :string, deprecated: false

  field :rollout_strategy, 4,
    type: Google.Cloud.Configdelivery.V1alpha.RolloutStrategy,
    json_name: "rolloutStrategy"

  field :info, 5, type: Google.Cloud.Configdelivery.V1alpha.RolloutInfo

  field :deletion_propagation_policy, 7,
    type: Google.Cloud.Configdelivery.V1alpha.DeletionPropagationPolicy,
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

defmodule Google.Cloud.Configdelivery.V1alpha.SuspendRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ResumeRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.AbortRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1alpha.ConfigDelivery.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.configdelivery.v1alpha.ConfigDelivery",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListResourceBundles,
      Google.Cloud.Configdelivery.V1alpha.ListResourceBundlesRequest,
      Google.Cloud.Configdelivery.V1alpha.ListResourceBundlesResponse

  rpc :GetResourceBundle,
      Google.Cloud.Configdelivery.V1alpha.GetResourceBundleRequest,
      Google.Cloud.Configdelivery.V1alpha.ResourceBundle

  rpc :CreateResourceBundle,
      Google.Cloud.Configdelivery.V1alpha.CreateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :UpdateResourceBundle,
      Google.Cloud.Configdelivery.V1alpha.UpdateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :DeleteResourceBundle,
      Google.Cloud.Configdelivery.V1alpha.DeleteResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :ListFleetPackages,
      Google.Cloud.Configdelivery.V1alpha.ListFleetPackagesRequest,
      Google.Cloud.Configdelivery.V1alpha.ListFleetPackagesResponse

  rpc :GetFleetPackage,
      Google.Cloud.Configdelivery.V1alpha.GetFleetPackageRequest,
      Google.Cloud.Configdelivery.V1alpha.FleetPackage

  rpc :CreateFleetPackage,
      Google.Cloud.Configdelivery.V1alpha.CreateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :UpdateFleetPackage,
      Google.Cloud.Configdelivery.V1alpha.UpdateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :DeleteFleetPackage,
      Google.Cloud.Configdelivery.V1alpha.DeleteFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :ListReleases,
      Google.Cloud.Configdelivery.V1alpha.ListReleasesRequest,
      Google.Cloud.Configdelivery.V1alpha.ListReleasesResponse

  rpc :GetRelease,
      Google.Cloud.Configdelivery.V1alpha.GetReleaseRequest,
      Google.Cloud.Configdelivery.V1alpha.Release

  rpc :CreateRelease,
      Google.Cloud.Configdelivery.V1alpha.CreateReleaseRequest,
      Google.Longrunning.Operation

  rpc :UpdateRelease,
      Google.Cloud.Configdelivery.V1alpha.UpdateReleaseRequest,
      Google.Longrunning.Operation

  rpc :DeleteRelease,
      Google.Cloud.Configdelivery.V1alpha.DeleteReleaseRequest,
      Google.Longrunning.Operation

  rpc :ListVariants,
      Google.Cloud.Configdelivery.V1alpha.ListVariantsRequest,
      Google.Cloud.Configdelivery.V1alpha.ListVariantsResponse

  rpc :GetVariant,
      Google.Cloud.Configdelivery.V1alpha.GetVariantRequest,
      Google.Cloud.Configdelivery.V1alpha.Variant

  rpc :CreateVariant,
      Google.Cloud.Configdelivery.V1alpha.CreateVariantRequest,
      Google.Longrunning.Operation

  rpc :UpdateVariant,
      Google.Cloud.Configdelivery.V1alpha.UpdateVariantRequest,
      Google.Longrunning.Operation

  rpc :DeleteVariant,
      Google.Cloud.Configdelivery.V1alpha.DeleteVariantRequest,
      Google.Longrunning.Operation

  rpc :ListRollouts,
      Google.Cloud.Configdelivery.V1alpha.ListRolloutsRequest,
      Google.Cloud.Configdelivery.V1alpha.ListRolloutsResponse

  rpc :GetRollout,
      Google.Cloud.Configdelivery.V1alpha.GetRolloutRequest,
      Google.Cloud.Configdelivery.V1alpha.Rollout

  rpc :SuspendRollout,
      Google.Cloud.Configdelivery.V1alpha.SuspendRolloutRequest,
      Google.Longrunning.Operation

  rpc :ResumeRollout,
      Google.Cloud.Configdelivery.V1alpha.ResumeRolloutRequest,
      Google.Longrunning.Operation

  rpc :AbortRollout,
      Google.Cloud.Configdelivery.V1alpha.AbortRolloutRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Configdelivery.V1alpha.ConfigDelivery.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Configdelivery.V1alpha.ConfigDelivery.Service
end
