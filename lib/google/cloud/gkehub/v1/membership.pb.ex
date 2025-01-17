defmodule Google.Cloud.Gkehub.V1.MembershipState.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :SERVICE_UPDATING, 5
end

defmodule Google.Cloud.Gkehub.V1.Membership.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1.Membership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :type, 0

  field :endpoint, 4, type: Google.Cloud.Gkehub.V1.MembershipEndpoint, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1.Membership.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 3, type: :string, deprecated: false
  field :state, 5, type: Google.Cloud.Gkehub.V1.MembershipState, deprecated: false

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

  field :last_connection_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastConnectionTime",
    deprecated: false

  field :unique_id, 11, type: :string, json_name: "uniqueId", deprecated: false
  field :authority, 12, type: Google.Cloud.Gkehub.V1.Authority, deprecated: false

  field :monitoring_config, 14,
    type: Google.Cloud.Gkehub.V1.MonitoringConfig,
    json_name: "monitoringConfig",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.MembershipEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gke_cluster, 1,
    type: Google.Cloud.Gkehub.V1.GkeCluster,
    json_name: "gkeCluster",
    deprecated: false

  field :kubernetes_metadata, 2,
    type: Google.Cloud.Gkehub.V1.KubernetesMetadata,
    json_name: "kubernetesMetadata",
    deprecated: false

  field :kubernetes_resource, 3,
    type: Google.Cloud.Gkehub.V1.KubernetesResource,
    json_name: "kubernetesResource",
    deprecated: false

  field :google_managed, 8, type: :bool, json_name: "googleManaged", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.KubernetesResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :membership_cr_manifest, 1,
    type: :string,
    json_name: "membershipCrManifest",
    deprecated: false

  field :membership_resources, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1.ResourceManifest,
    json_name: "membershipResources",
    deprecated: false

  field :connect_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.V1.ResourceManifest,
    json_name: "connectResources",
    deprecated: false

  field :resource_options, 4,
    type: Google.Cloud.Gkehub.V1.ResourceOptions,
    json_name: "resourceOptions",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.ResourceOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :connect_version, 1, type: :string, json_name: "connectVersion", deprecated: false
  field :v1beta1_crd, 2, type: :bool, json_name: "v1beta1Crd", deprecated: false
  field :k8s_version, 3, type: :string, json_name: "k8sVersion", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.ResourceManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :manifest, 1, type: :string
  field :cluster_scoped, 2, type: :bool, json_name: "clusterScoped"
end

defmodule Google.Cloud.Gkehub.V1.GkeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.KubernetesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Gkehub.V1.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :cluster, 3, type: :string, deprecated: false
  field :kubernetes_metrics_prefix, 4, type: :string, json_name: "kubernetesMetricsPrefix"
  field :cluster_hash, 5, type: :string, json_name: "clusterHash", deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Gkehub.V1.MembershipState.Code, enum: true, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1.Authority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :issuer, 1, type: :string, deprecated: false

  field :workload_identity_pool, 2,
    type: :string,
    json_name: "workloadIdentityPool",
    deprecated: false

  field :identity_provider, 3, type: :string, json_name: "identityProvider", deprecated: false
  field :oidc_jwks, 4, type: :bytes, json_name: "oidcJwks", deprecated: false
end
