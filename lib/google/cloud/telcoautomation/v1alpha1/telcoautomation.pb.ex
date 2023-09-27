defmodule Google.Cloud.Telcoautomation.V1alpha1.BlueprintView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BLUEPRINT_VIEW_UNSPECIFIED, 0
  field :BLUEPRINT_VIEW_BASIC, 1
  field :BLUEPRINT_VIEW_FULL, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeploymentView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEPLOYMENT_VIEW_UNSPECIFIED, 0
  field :DEPLOYMENT_VIEW_BASIC, 1
  field :DEPLOYMENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :NF_DEPLOY_CUSTOM_RESOURCE, 1
  field :BLUEPRINT_CUSTOM_RESOURCE, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :STATUS_IN_PROGRESS, 1
  field :STATUS_ACTIVE, 2
  field :STATUS_FAILED, 3
  field :STATUS_PEERING, 10
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.WorkloadClusterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :WORKLOAD_CLUSTER_TYPE_UNSPECIFIED, 0
  field :GDCE, 1
  field :GKE, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Blueprint.ApprovalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :APPROVAL_STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :PROPOSED, 2
  field :APPROVED, 3
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.PublicBlueprint.DeploymentLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEPLOYMENT_LEVEL_UNSPECIFIED, 0
  field :HYDRATION, 1
  field :DEPLOYMENT, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Deployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :APPLIED, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :APPLIED, 2
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :management_config, 5,
    type: Google.Cloud.Telcoautomation.V1alpha1.ManagementConfig,
    json_name: "managementConfig"

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
    type: Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster.LabelsEntry,
    map: true

  field :tna_version, 6, type: :string, json_name: "tnaVersion", deprecated: false

  field :state, 7,
    type: Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :orchestration_cluster, 5,
    type: :string,
    json_name: "orchestrationCluster",
    deprecated: false

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
    type: Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.LabelsEntry,
    map: true,
    deprecated: false

  field :tna_version, 6, type: :string, json_name: "tnaVersion", deprecated: false

  field :state, 7,
    type: Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.State,
    enum: true,
    deprecated: false

  field :workload_cluster_type, 8,
    type: Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm.WorkloadClusterType,
    json_name: "workloadClusterType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Blueprint.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Blueprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
  field :source_blueprint, 3, type: :string, json_name: "sourceBlueprint", deprecated: false

  field :revision_create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :approval_state, 6,
    type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint.ApprovalState,
    json_name: "approvalState",
    enum: true,
    deprecated: false

  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false
  field :repository, 8, type: :string, deprecated: false

  field :files, 9,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.File,
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :source_provider, 13, type: :string, json_name: "sourceProvider", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.PublicBlueprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :deployment_level, 4,
    type: Google.Cloud.Telcoautomation.V1alpha1.PublicBlueprint.DeploymentLevel,
    json_name: "deploymentLevel",
    enum: true

  field :source_provider, 5, type: :string, json_name: "sourceProvider"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Deployment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false

  field :source_blueprint_revision, 3,
    type: :string,
    json_name: "sourceBlueprintRevision",
    deprecated: false

  field :revision_create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Telcoautomation.V1alpha1.Deployment.State,
    enum: true,
    deprecated: false

  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :repository, 7, type: :string, deprecated: false

  field :files, 8,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.File,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.Deployment.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :source_provider, 12, type: :string, json_name: "sourceProvider", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment.State,
    enum: true,
    deprecated: false

  field :files, 3,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.File,
    deprecated: false

  field :workload_cluster, 4, type: :string, json_name: "workloadCluster", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListOrchestrationClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListOrchestrationClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :orchestration_clusters, 1,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster,
    json_name: "orchestrationClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetOrchestrationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.CreateOrchestrationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :orchestration_cluster_id, 2,
    type: :string,
    json_name: "orchestrationClusterId",
    deprecated: false

  field :orchestration_cluster, 3,
    type: Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster,
    json_name: "orchestrationCluster",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteOrchestrationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListEdgeSlmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListEdgeSlmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :edge_slms, 1,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm,
    json_name: "edgeSlms"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetEdgeSlmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.CreateEdgeSlmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :edge_slm_id, 2, type: :string, json_name: "edgeSlmId", deprecated: false

  field :edge_slm, 3,
    type: Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm,
    json_name: "edgeSlm",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteEdgeSlmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.CreateBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :blueprint_id, 2, type: :string, json_name: "blueprintId", deprecated: false
  field :blueprint, 3, type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.UpdateBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :blueprint, 1, type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Telcoautomation.V1alpha1.BlueprintView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteBlueprintRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :blueprints, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ApproveBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ProposeBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.RejectBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :blueprints, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.SearchBlueprintRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.SearchBlueprintRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :blueprints, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Blueprint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DiscardBlueprintChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DiscardBlueprintChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListPublicBlueprintsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListPublicBlueprintsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :public_blueprints, 1,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.PublicBlueprint,
    json_name: "publicBlueprints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetPublicBlueprintRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.CreateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :deployment, 3, type: Google.Cloud.Telcoautomation.V1alpha1.Deployment, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.UpdateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployment, 1, type: Google.Cloud.Telcoautomation.V1alpha1.Deployment, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Telcoautomation.V1alpha1.DeploymentView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.RemoveDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DeleteDeploymentRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.SearchDeploymentRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.SearchDeploymentRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Telcoautomation.V1alpha1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DiscardDeploymentChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.DiscardDeploymentChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ApplyDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ComputeDeploymentStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ComputeDeploymentStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :status, 2,
    type: Google.Cloud.Telcoautomation.V1alpha1.Status,
    enum: true,
    deprecated: false

  field :resource_statuses, 3,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.ResourceStatus,
    json_name: "resourceStatuses",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.RollbackDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Telcoautomation.V1alpha1.GetHydratedDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListHydratedDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ListHydratedDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hydrated_deployments, 1,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment,
    json_name: "hydratedDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.UpdateHydratedDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hydrated_deployment, 1,
    type: Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment,
    json_name: "hydratedDeployment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ApplyHydratedDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ManagementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :oneof_config, 0

  field :standard_management_config, 1,
    type: Google.Cloud.Telcoautomation.V1alpha1.StandardManagementConfig,
    json_name: "standardManagementConfig",
    oneof: 0

  field :full_management_config, 2,
    type: Google.Cloud.Telcoautomation.V1alpha1.FullManagementConfig,
    json_name: "fullManagementConfig",
    oneof: 0
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.StandardManagementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnet, 2, type: :string, deprecated: false

  field :master_ipv4_cidr_block, 3,
    type: :string,
    json_name: "masterIpv4CidrBlock",
    deprecated: false

  field :cluster_cidr_block, 4, type: :string, json_name: "clusterCidrBlock", deprecated: false
  field :services_cidr_block, 5, type: :string, json_name: "servicesCidrBlock", deprecated: false
  field :cluster_named_range, 6, type: :string, json_name: "clusterNamedRange", deprecated: false

  field :services_named_range, 7,
    type: :string,
    json_name: "servicesNamedRange",
    deprecated: false

  field :master_authorized_networks_config, 8,
    type: Google.Cloud.Telcoautomation.V1alpha1.MasterAuthorizedNetworksConfig,
    json_name: "masterAuthorizedNetworksConfig",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.FullManagementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnet, 2, type: :string, deprecated: false

  field :master_ipv4_cidr_block, 3,
    type: :string,
    json_name: "masterIpv4CidrBlock",
    deprecated: false

  field :cluster_cidr_block, 4, type: :string, json_name: "clusterCidrBlock", deprecated: false
  field :services_cidr_block, 5, type: :string, json_name: "servicesCidrBlock", deprecated: false
  field :cluster_named_range, 6, type: :string, json_name: "clusterNamedRange", deprecated: false

  field :services_named_range, 7,
    type: :string,
    json_name: "servicesNamedRange",
    deprecated: false

  field :master_authorized_networks_config, 8,
    type: Google.Cloud.Telcoautomation.V1alpha1.MasterAuthorizedNetworksConfig,
    json_name: "masterAuthorizedNetworksConfig",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.MasterAuthorizedNetworksConfig.CidrBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :cidr_block, 2, type: :string, json_name: "cidrBlock", deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.MasterAuthorizedNetworksConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cidr_blocks, 1,
    repeated: true,
    type: Google.Cloud.Telcoautomation.V1alpha1.MasterAuthorizedNetworksConfig.CidrBlock,
    json_name: "cidrBlocks",
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
  field :deleted, 3, type: :bool, deprecated: false
  field :editable, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.ResourceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :resource_namespace, 2, type: :string, json_name: "resourceNamespace"
  field :group, 3, type: :string
  field :version, 4, type: :string
  field :kind, 5, type: :string

  field :resource_type, 6,
    type: Google.Cloud.Telcoautomation.V1alpha1.ResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :status, 7,
    type: Google.Cloud.Telcoautomation.V1alpha1.Status,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.TelcoAutomation.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.telcoautomation.v1alpha1.TelcoAutomation",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListOrchestrationClusters,
      Google.Cloud.Telcoautomation.V1alpha1.ListOrchestrationClustersRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListOrchestrationClustersResponse

  rpc :GetOrchestrationCluster,
      Google.Cloud.Telcoautomation.V1alpha1.GetOrchestrationClusterRequest,
      Google.Cloud.Telcoautomation.V1alpha1.OrchestrationCluster

  rpc :CreateOrchestrationCluster,
      Google.Cloud.Telcoautomation.V1alpha1.CreateOrchestrationClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteOrchestrationCluster,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteOrchestrationClusterRequest,
      Google.Longrunning.Operation

  rpc :ListEdgeSlms,
      Google.Cloud.Telcoautomation.V1alpha1.ListEdgeSlmsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListEdgeSlmsResponse

  rpc :GetEdgeSlm,
      Google.Cloud.Telcoautomation.V1alpha1.GetEdgeSlmRequest,
      Google.Cloud.Telcoautomation.V1alpha1.EdgeSlm

  rpc :CreateEdgeSlm,
      Google.Cloud.Telcoautomation.V1alpha1.CreateEdgeSlmRequest,
      Google.Longrunning.Operation

  rpc :DeleteEdgeSlm,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteEdgeSlmRequest,
      Google.Longrunning.Operation

  rpc :CreateBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.CreateBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :UpdateBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.UpdateBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :GetBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.GetBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :DeleteBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteBlueprintRequest,
      Google.Protobuf.Empty

  rpc :DeleteBlueprintRevision,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteBlueprintRevisionRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :ListBlueprints,
      Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintsResponse

  rpc :ApproveBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.ApproveBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :ProposeBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.ProposeBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :RejectBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.RejectBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Blueprint

  rpc :ListBlueprintRevisions,
      Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintRevisionsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListBlueprintRevisionsResponse

  rpc :SearchBlueprintRevisions,
      Google.Cloud.Telcoautomation.V1alpha1.SearchBlueprintRevisionsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.SearchBlueprintRevisionsResponse

  rpc :SearchDeploymentRevisions,
      Google.Cloud.Telcoautomation.V1alpha1.SearchDeploymentRevisionsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.SearchDeploymentRevisionsResponse

  rpc :DiscardBlueprintChanges,
      Google.Cloud.Telcoautomation.V1alpha1.DiscardBlueprintChangesRequest,
      Google.Cloud.Telcoautomation.V1alpha1.DiscardBlueprintChangesResponse

  rpc :ListPublicBlueprints,
      Google.Cloud.Telcoautomation.V1alpha1.ListPublicBlueprintsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListPublicBlueprintsResponse

  rpc :GetPublicBlueprint,
      Google.Cloud.Telcoautomation.V1alpha1.GetPublicBlueprintRequest,
      Google.Cloud.Telcoautomation.V1alpha1.PublicBlueprint

  rpc :CreateDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.CreateDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :UpdateDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.UpdateDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :GetDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.GetDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :DeleteDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteDeploymentRequest,
      Google.Protobuf.Empty

  rpc :RemoveDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.RemoveDeploymentRequest,
      Google.Protobuf.Empty

  rpc :DeleteDeploymentRevision,
      Google.Cloud.Telcoautomation.V1alpha1.DeleteDeploymentRevisionRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :ListDeployments,
      Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentsResponse

  rpc :ListDeploymentRevisions,
      Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentRevisionsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListDeploymentRevisionsResponse

  rpc :DiscardDeploymentChanges,
      Google.Cloud.Telcoautomation.V1alpha1.DiscardDeploymentChangesRequest,
      Google.Cloud.Telcoautomation.V1alpha1.DiscardDeploymentChangesResponse

  rpc :ApplyDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.ApplyDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :ComputeDeploymentStatus,
      Google.Cloud.Telcoautomation.V1alpha1.ComputeDeploymentStatusRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ComputeDeploymentStatusResponse

  rpc :RollbackDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.RollbackDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.Deployment

  rpc :GetHydratedDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.GetHydratedDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment

  rpc :ListHydratedDeployments,
      Google.Cloud.Telcoautomation.V1alpha1.ListHydratedDeploymentsRequest,
      Google.Cloud.Telcoautomation.V1alpha1.ListHydratedDeploymentsResponse

  rpc :UpdateHydratedDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.UpdateHydratedDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment

  rpc :ApplyHydratedDeployment,
      Google.Cloud.Telcoautomation.V1alpha1.ApplyHydratedDeploymentRequest,
      Google.Cloud.Telcoautomation.V1alpha1.HydratedDeployment
end

defmodule Google.Cloud.Telcoautomation.V1alpha1.TelcoAutomation.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Telcoautomation.V1alpha1.TelcoAutomation.Service
end