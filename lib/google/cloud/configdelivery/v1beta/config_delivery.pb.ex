defmodule Google.Cloud.Configdelivery.V1beta.DeletionPropagationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DELETION_PROPAGATION_POLICY_UNSPECIFIED, 0
  field :FOREGROUND, 1
  field :ORPHAN, 2
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackageInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
  field :FAILED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Configdelivery.V1beta.ClusterInfo.State do
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

defmodule Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo.SyncState do
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

defmodule Google.Cloud.Configdelivery.V1beta.Release.Lifecycle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIFECYCLE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :PUBLISHED, 2
end

defmodule Google.Cloud.Configdelivery.V1beta.RolloutInfo.State do
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

defmodule Google.Cloud.Configdelivery.V1beta.ResourceBundle.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.ResourceBundle do
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
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundle.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListResourceBundlesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListResourceBundlesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_bundles, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundle,
    json_name: "resourceBundles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.GetResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.CreateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :resource_bundle_id, 2, type: :string, json_name: "resourceBundleId", deprecated: false

  field :resource_bundle, 3,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.UpdateResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource_bundle, 2,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundle,
    json_name: "resourceBundle",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.DeleteResourceBundleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.ResourceBundleSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :resource_bundle, 1,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.ResourceBundleTag,
    json_name: "resourceBundle",
    oneof: 0

  field :cloud_build_repository, 3,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.CloudBuildRepository,
    json_name: "cloudBuildRepository",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.ResourceBundleTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.CloudBuildRepository do
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

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :fleet, 1, type: Google.Cloud.Configdelivery.V1beta.Fleet, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.VariantSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :variant_name_template, 1,
    type: :string,
    json_name: "variantNameTemplate",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackage do
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
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.LabelsEntry,
    map: true,
    deprecated: false

  field :resource_bundle_selector, 5,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.ResourceBundleSelector,
    json_name: "resourceBundleSelector",
    deprecated: false

  field :target, 9,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.Target,
    deprecated: false

  field :rollout_strategy, 10,
    type: Google.Cloud.Configdelivery.V1beta.RolloutStrategy,
    json_name: "rolloutStrategy",
    deprecated: false

  field :variant_selector, 11,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.VariantSelector,
    json_name: "variantSelector",
    deprecated: false

  field :info, 13, type: Google.Cloud.Configdelivery.V1beta.FleetPackageInfo, deprecated: false

  field :deletion_propagation_policy, 15,
    type: Google.Cloud.Configdelivery.V1beta.DeletionPropagationPolicy,
    json_name: "deletionPropagationPolicy",
    enum: true,
    deprecated: false

  field :state, 16,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :active_rollout, 1, type: :string, json_name: "activeRollout", deprecated: false

  field :last_completed_rollout, 2,
    type: :string,
    json_name: "lastCompletedRollout",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackageInfo.State,
    enum: true,
    deprecated: false

  field :errors, 6,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackageError,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.FleetPackageError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ClusterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :membership, 1, type: :string, deprecated: false

  field :desired, 2,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo,
    deprecated: false

  field :initial, 3,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo,
    deprecated: false

  field :current, 4,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Configdelivery.V1beta.ClusterInfo.State,
    enum: true,
    deprecated: false

  field :messages, 6, repeated: true, type: :string, deprecated: false
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
  field :variant, 3, type: :string, deprecated: false

  field :sync_state, 4,
    type: Google.Cloud.Configdelivery.V1beta.ResourceBundleDeploymentInfo.SyncState,
    json_name: "syncState",
    enum: true,
    deprecated: false

  field :messages, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.Fleet.LabelSelector.MatchLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.Fleet.LabelSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :match_labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.Fleet.LabelSelector.MatchLabelsEntry,
    json_name: "matchLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false

  field :selector, 2,
    type: Google.Cloud.Configdelivery.V1beta.Fleet.LabelSelector,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.AllAtOnceStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Configdelivery.V1beta.RollingStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_concurrent, 1, type: :int32, json_name: "maxConcurrent", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.RolloutStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once, 1,
    type: Google.Cloud.Configdelivery.V1beta.AllAtOnceStrategy,
    json_name: "allAtOnce",
    oneof: 0

  field :rolling, 2, type: Google.Cloud.Configdelivery.V1beta.RollingStrategy, oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1beta.RolloutStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :all_at_once_strategy_info, 1,
    type: Google.Cloud.Configdelivery.V1beta.AllAtOnceStrategyInfo,
    json_name: "allAtOnceStrategyInfo",
    oneof: 0

  field :rolling_strategy_info, 2,
    type: Google.Cloud.Configdelivery.V1beta.RollingStrategyInfo,
    json_name: "rollingStrategyInfo",
    oneof: 0
end

defmodule Google.Cloud.Configdelivery.V1beta.AllAtOnceStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.RollingStrategyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.ClusterInfo,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListFleetPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListFleetPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fleet_packages, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage,
    json_name: "fleetPackages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.GetFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.CreateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :fleet_package_id, 2, type: :string, json_name: "fleetPackageId", deprecated: false

  field :fleet_package, 3,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.UpdateFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :fleet_package, 2,
    type: Google.Cloud.Configdelivery.V1beta.FleetPackage,
    json_name: "fleetPackage",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.DeleteFleetPackageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.OperationMetadata do
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

defmodule Google.Cloud.Configdelivery.V1beta.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.Release do
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
    type: Google.Cloud.Configdelivery.V1beta.Release.LabelsEntry,
    map: true,
    deprecated: false

  field :lifecycle, 5,
    type: Google.Cloud.Configdelivery.V1beta.Release.Lifecycle,
    enum: true,
    deprecated: false

  field :version, 6, type: :string, deprecated: false

  field :publish_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "publishTime",
    deprecated: false

  field :info, 9, type: Google.Cloud.Configdelivery.V1beta.ReleaseInfo, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.Variant.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.Variant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.Variant.LabelsEntry,
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

defmodule Google.Cloud.Configdelivery.V1beta.ListVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Cloud.Configdelivery.V1beta.Variant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.GetVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.CreateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :variant_id, 2, type: :string, json_name: "variantId", deprecated: false
  field :variant, 3, type: Google.Cloud.Configdelivery.V1beta.Variant, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.UpdateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :variant, 2, type: Google.Cloud.Configdelivery.V1beta.Variant, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.DeleteVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ReleaseInfo.VariantOciImagePathsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Configdelivery.V1beta.ReleaseInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oci_image_path, 1, type: :string, json_name: "ociImagePath", deprecated: false

  field :variant_oci_image_paths, 2,
    repeated: true,
    type: Google.Cloud.Configdelivery.V1beta.ReleaseInfo.VariantOciImagePathsEntry,
    json_name: "variantOciImagePaths",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :releases, 1, repeated: true, type: Google.Cloud.Configdelivery.V1beta.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Configdelivery.V1beta.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.UpdateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :release, 2, type: Google.Cloud.Configdelivery.V1beta.Release, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.DeleteReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollouts, 1, repeated: true, type: Google.Cloud.Configdelivery.V1beta.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.RolloutInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Configdelivery.V1beta.RolloutInfo.State,
    enum: true,
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :message, 6, type: :string, deprecated: false

  field :rollout_strategy_info, 7,
    type: Google.Cloud.Configdelivery.V1beta.RolloutStrategyInfo,
    json_name: "rolloutStrategyInfo",
    deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :release, 2, type: :string, deprecated: false

  field :rollout_strategy, 4,
    type: Google.Cloud.Configdelivery.V1beta.RolloutStrategy,
    json_name: "rolloutStrategy"

  field :info, 5, type: Google.Cloud.Configdelivery.V1beta.RolloutInfo

  field :deletion_propagation_policy, 7,
    type: Google.Cloud.Configdelivery.V1beta.DeletionPropagationPolicy,
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

defmodule Google.Cloud.Configdelivery.V1beta.SuspendRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ResumeRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.AbortRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Configdelivery.V1beta.ConfigDelivery.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.configdelivery.v1beta.ConfigDelivery",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListResourceBundles,
      Google.Cloud.Configdelivery.V1beta.ListResourceBundlesRequest,
      Google.Cloud.Configdelivery.V1beta.ListResourceBundlesResponse

  rpc :GetResourceBundle,
      Google.Cloud.Configdelivery.V1beta.GetResourceBundleRequest,
      Google.Cloud.Configdelivery.V1beta.ResourceBundle

  rpc :CreateResourceBundle,
      Google.Cloud.Configdelivery.V1beta.CreateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :UpdateResourceBundle,
      Google.Cloud.Configdelivery.V1beta.UpdateResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :DeleteResourceBundle,
      Google.Cloud.Configdelivery.V1beta.DeleteResourceBundleRequest,
      Google.Longrunning.Operation

  rpc :ListFleetPackages,
      Google.Cloud.Configdelivery.V1beta.ListFleetPackagesRequest,
      Google.Cloud.Configdelivery.V1beta.ListFleetPackagesResponse

  rpc :GetFleetPackage,
      Google.Cloud.Configdelivery.V1beta.GetFleetPackageRequest,
      Google.Cloud.Configdelivery.V1beta.FleetPackage

  rpc :CreateFleetPackage,
      Google.Cloud.Configdelivery.V1beta.CreateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :UpdateFleetPackage,
      Google.Cloud.Configdelivery.V1beta.UpdateFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :DeleteFleetPackage,
      Google.Cloud.Configdelivery.V1beta.DeleteFleetPackageRequest,
      Google.Longrunning.Operation

  rpc :ListReleases,
      Google.Cloud.Configdelivery.V1beta.ListReleasesRequest,
      Google.Cloud.Configdelivery.V1beta.ListReleasesResponse

  rpc :GetRelease,
      Google.Cloud.Configdelivery.V1beta.GetReleaseRequest,
      Google.Cloud.Configdelivery.V1beta.Release

  rpc :CreateRelease,
      Google.Cloud.Configdelivery.V1beta.CreateReleaseRequest,
      Google.Longrunning.Operation

  rpc :UpdateRelease,
      Google.Cloud.Configdelivery.V1beta.UpdateReleaseRequest,
      Google.Longrunning.Operation

  rpc :DeleteRelease,
      Google.Cloud.Configdelivery.V1beta.DeleteReleaseRequest,
      Google.Longrunning.Operation

  rpc :ListVariants,
      Google.Cloud.Configdelivery.V1beta.ListVariantsRequest,
      Google.Cloud.Configdelivery.V1beta.ListVariantsResponse

  rpc :GetVariant,
      Google.Cloud.Configdelivery.V1beta.GetVariantRequest,
      Google.Cloud.Configdelivery.V1beta.Variant

  rpc :CreateVariant,
      Google.Cloud.Configdelivery.V1beta.CreateVariantRequest,
      Google.Longrunning.Operation

  rpc :UpdateVariant,
      Google.Cloud.Configdelivery.V1beta.UpdateVariantRequest,
      Google.Longrunning.Operation

  rpc :DeleteVariant,
      Google.Cloud.Configdelivery.V1beta.DeleteVariantRequest,
      Google.Longrunning.Operation

  rpc :ListRollouts,
      Google.Cloud.Configdelivery.V1beta.ListRolloutsRequest,
      Google.Cloud.Configdelivery.V1beta.ListRolloutsResponse

  rpc :GetRollout,
      Google.Cloud.Configdelivery.V1beta.GetRolloutRequest,
      Google.Cloud.Configdelivery.V1beta.Rollout

  rpc :SuspendRollout,
      Google.Cloud.Configdelivery.V1beta.SuspendRolloutRequest,
      Google.Longrunning.Operation

  rpc :ResumeRollout,
      Google.Cloud.Configdelivery.V1beta.ResumeRolloutRequest,
      Google.Longrunning.Operation

  rpc :AbortRollout,
      Google.Cloud.Configdelivery.V1beta.AbortRolloutRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Configdelivery.V1beta.ConfigDelivery.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Configdelivery.V1beta.ConfigDelivery.Service
end
