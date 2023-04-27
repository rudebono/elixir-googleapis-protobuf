defmodule Google.Cloud.Gkehub.V1alpha2.Membership.InfrastructureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INFRASTRUCTURE_TYPE_UNSPECIFIED, 0
  field :ON_PREM, 1
  field :MULTI_CLOUD, 2
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipState.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :SERVICE_UPDATING, 5
end

defmodule Google.Cloud.Gkehub.V1alpha2.Membership.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.Membership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha2.Membership.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 3, type: :string, deprecated: false

  field :endpoint, 4,
    type: Google.Cloud.Gkehub.V1alpha2.MembershipEndpoint,
    oneof: 0,
    deprecated: false

  field :state, 5, type: Google.Cloud.Gkehub.V1alpha2.MembershipState, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :external_id, 9, type: :string, json_name: "externalId", deprecated: false
  field :authority, 10, type: Google.Cloud.Gkehub.V1alpha2.Authority, deprecated: false

  field :last_connection_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "lastConnectionTime",
    deprecated: false

  field :unique_id, 12, type: :string, json_name: "uniqueId", deprecated: false

  field :infrastructure_type, 13,
    type: Google.Cloud.Gkehub.V1alpha2.Membership.InfrastructureType,
    json_name: "infrastructureType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :gke_cluster, 1,
    type: Google.Cloud.Gkehub.V1alpha2.GkeCluster,
    json_name: "gkeCluster",
    oneof: 0,
    deprecated: false

  field :on_prem_cluster, 4,
    type: Google.Cloud.Gkehub.V1alpha2.OnPremCluster,
    json_name: "onPremCluster",
    oneof: 0,
    deprecated: false

  field :multi_cloud_cluster, 5,
    type: Google.Cloud.Gkehub.V1alpha2.MultiCloudCluster,
    json_name: "multiCloudCluster",
    oneof: 0,
    deprecated: false

  field :kubernetes_metadata, 2,
    type: Google.Cloud.Gkehub.V1alpha2.KubernetesMetadata,
    json_name: "kubernetesMetadata",
    deprecated: false

  field :kubernetes_resource, 3,
    type: Google.Cloud.Gkehub.V1alpha2.KubernetesResource,
    json_name: "kubernetesResource",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.KubernetesResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :membership_cr_manifest, 1,
    type: :string,
    json_name: "membershipCrManifest",
    deprecated: false

  field :membership_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha2.ResourceManifest,
    json_name: "membershipResources",
    deprecated: false

  field :connect_resources, 4,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha2.ResourceManifest,
    json_name: "connectResources",
    deprecated: false

  field :resource_options, 5,
    type: Google.Cloud.Gkehub.V1alpha2.ResourceOptions,
    json_name: "resourceOptions",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.ResourceOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connect_version, 1, type: :string, json_name: "connectVersion", deprecated: false
  field :v1beta1_crd, 2, type: :bool, json_name: "v1beta1Crd", deprecated: false
  field :k8s_version, 3, type: :string, json_name: "k8sVersion", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.GkeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.OnPremCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
  field :admin_cluster, 3, type: :bool, json_name: "adminCluster", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.MultiCloudCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.KubernetesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kubernetes_api_server_version, 1,
    type: :string,
    json_name: "kubernetesApiServerVersion",
    deprecated: false

  field :node_provider_id, 2, type: :string, json_name: "nodeProviderId", deprecated: false
  field :node_count, 3, type: :int32, json_name: "nodeCount", deprecated: false
  field :vcpu_count, 4, type: :int32, json_name: "vcpuCount", deprecated: false
  field :memory_mb, 5, type: :int32, json_name: "memoryMb", deprecated: false

  field :update_time, 100,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.Authority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issuer, 1, type: :string, deprecated: false
  field :oidc_jwks, 5, type: :bytes, json_name: "oidcJwks", deprecated: false
  field :identity_provider, 3, type: :string, json_name: "identityProvider", deprecated: false

  field :workload_identity_pool, 4,
    type: :string,
    json_name: "workloadIdentityPool",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Gkehub.V1alpha2.MembershipState.Code,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.ListMembershipsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.ListMembershipsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1alpha2.Membership
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.GetMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.CreateMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :membership_id, 2, type: :string, json_name: "membershipId", deprecated: false
  field :resource, 3, type: Google.Cloud.Gkehub.V1alpha2.Membership, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.DeleteMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.UpdateMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource, 3, type: Google.Cloud.Gkehub.V1alpha2.Membership, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :namespace, 2, type: :string, deprecated: false
  field :proxy, 3, type: :bytes, deprecated: false
  field :version, 4, type: :string, deprecated: false
  field :is_upgrade, 5, type: :bool, json_name: "isUpgrade", deprecated: false
  field :registry, 6, type: :string, deprecated: false

  field :image_pull_secret_content, 7,
    type: :bytes,
    json_name: "imagePullSecretContent",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :manifest, 1, repeated: true, type: Google.Cloud.Gkehub.V1alpha2.ConnectAgentResource
end

defmodule Google.Cloud.Gkehub.V1alpha2.ConnectAgentResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Gkehub.V1alpha2.TypeMeta
  field :manifest, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.ResourceManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :manifest, 1, type: :string
  field :cluster_scoped, 2, type: :bool, json_name: "clusterScoped"
end

defmodule Google.Cloud.Gkehub.V1alpha2.TypeMeta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :api_version, 2, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Gkehub.V1alpha2.InitializeHubRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.InitializeHubResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_identity, 1, type: :string, json_name: "serviceIdentity"
  field :workload_identity_pool, 2, type: :string, json_name: "workloadIdentityPool"
end

defmodule Google.Cloud.Gkehub.V1alpha2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_detail, 5, type: :string, json_name: "statusDetail", deprecated: false
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested", deprecated: false
  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha2.GkeHub.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gkehub.v1alpha2.GkeHub",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListMemberships,
      Google.Cloud.Gkehub.V1alpha2.ListMembershipsRequest,
      Google.Cloud.Gkehub.V1alpha2.ListMembershipsResponse

  rpc :GetMembership,
      Google.Cloud.Gkehub.V1alpha2.GetMembershipRequest,
      Google.Cloud.Gkehub.V1alpha2.Membership

  rpc :CreateMembership,
      Google.Cloud.Gkehub.V1alpha2.CreateMembershipRequest,
      Google.Longrunning.Operation

  rpc :DeleteMembership,
      Google.Cloud.Gkehub.V1alpha2.DeleteMembershipRequest,
      Google.Longrunning.Operation

  rpc :UpdateMembership,
      Google.Cloud.Gkehub.V1alpha2.UpdateMembershipRequest,
      Google.Longrunning.Operation

  rpc :GenerateConnectManifest,
      Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestRequest,
      Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestResponse

  rpc :InitializeHub,
      Google.Cloud.Gkehub.V1alpha2.InitializeHubRequest,
      Google.Cloud.Gkehub.V1alpha2.InitializeHubResponse
end

defmodule Google.Cloud.Gkehub.V1alpha2.GkeHub.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gkehub.V1alpha2.GkeHub.Service
end