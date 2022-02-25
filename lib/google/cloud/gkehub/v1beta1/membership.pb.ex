defmodule Google.Cloud.Gkehub.V1beta1.Membership.InfrastructureType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INFRASTRUCTURE_TYPE_UNSPECIFIED | :ON_PREM | :MULTI_CLOUD

  field :INFRASTRUCTURE_TYPE_UNSPECIFIED, 0
  field :ON_PREM, 1
  field :MULTI_CLOUD, 2
end
defmodule Google.Cloud.Gkehub.V1beta1.MembershipState.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CODE_UNSPECIFIED
          | :CREATING
          | :READY
          | :DELETING
          | :UPDATING
          | :SERVICE_UPDATING

  field :CODE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :SERVICE_UPDATING, 5
end
defmodule Google.Cloud.Gkehub.V1beta1.Membership.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkehub.V1beta1.Membership do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:endpoint, Google.Cloud.Gkehub.V1beta1.MembershipEndpoint.t() | nil},
          name: String.t(),
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Gkehub.V1beta1.MembershipState.t() | nil,
          authority: Google.Cloud.Gkehub.V1beta1.Authority.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          external_id: String.t(),
          last_connection_time: Google.Protobuf.Timestamp.t() | nil,
          unique_id: String.t(),
          infrastructure_type: Google.Cloud.Gkehub.V1beta1.Membership.InfrastructureType.t()
        }

  defstruct type: nil,
            name: "",
            labels: %{},
            description: "",
            state: nil,
            authority: nil,
            create_time: nil,
            update_time: nil,
            delete_time: nil,
            external_id: "",
            last_connection_time: nil,
            unique_id: "",
            infrastructure_type: :INFRASTRUCTURE_TYPE_UNSPECIFIED

  oneof :type, 0

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1beta1.Membership.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 3, type: :string, deprecated: false

  field :endpoint, 4,
    type: Google.Cloud.Gkehub.V1beta1.MembershipEndpoint,
    oneof: 0,
    deprecated: false

  field :state, 5, type: Google.Cloud.Gkehub.V1beta1.MembershipState, deprecated: false
  field :authority, 9, type: Google.Cloud.Gkehub.V1beta1.Authority, deprecated: false

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

  field :external_id, 10, type: :string, json_name: "externalId", deprecated: false

  field :last_connection_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "lastConnectionTime",
    deprecated: false

  field :unique_id, 12, type: :string, json_name: "uniqueId", deprecated: false

  field :infrastructure_type, 13,
    type: Google.Cloud.Gkehub.V1beta1.Membership.InfrastructureType,
    json_name: "infrastructureType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.MembershipEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:gke_cluster, Google.Cloud.Gkehub.V1beta1.GkeCluster.t() | nil}
            | {:on_prem_cluster, Google.Cloud.Gkehub.V1beta1.OnPremCluster.t() | nil}
            | {:multi_cloud_cluster, Google.Cloud.Gkehub.V1beta1.MultiCloudCluster.t() | nil},
          kubernetes_metadata: Google.Cloud.Gkehub.V1beta1.KubernetesMetadata.t() | nil,
          kubernetes_resource: Google.Cloud.Gkehub.V1beta1.KubernetesResource.t() | nil
        }

  defstruct type: nil,
            kubernetes_metadata: nil,
            kubernetes_resource: nil

  oneof :type, 0

  field :gke_cluster, 4,
    type: Google.Cloud.Gkehub.V1beta1.GkeCluster,
    json_name: "gkeCluster",
    oneof: 0,
    deprecated: false

  field :on_prem_cluster, 7,
    type: Google.Cloud.Gkehub.V1beta1.OnPremCluster,
    json_name: "onPremCluster",
    oneof: 0,
    deprecated: false

  field :multi_cloud_cluster, 8,
    type: Google.Cloud.Gkehub.V1beta1.MultiCloudCluster,
    json_name: "multiCloudCluster",
    oneof: 0,
    deprecated: false

  field :kubernetes_metadata, 5,
    type: Google.Cloud.Gkehub.V1beta1.KubernetesMetadata,
    json_name: "kubernetesMetadata",
    deprecated: false

  field :kubernetes_resource, 6,
    type: Google.Cloud.Gkehub.V1beta1.KubernetesResource,
    json_name: "kubernetesResource",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.KubernetesResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          membership_cr_manifest: String.t(),
          membership_resources: [Google.Cloud.Gkehub.V1beta1.ResourceManifest.t()],
          connect_resources: [Google.Cloud.Gkehub.V1beta1.ResourceManifest.t()],
          resource_options: Google.Cloud.Gkehub.V1beta1.ResourceOptions.t() | nil
        }

  defstruct membership_cr_manifest: "",
            membership_resources: [],
            connect_resources: [],
            resource_options: nil

  field :membership_cr_manifest, 1,
    type: :string,
    json_name: "membershipCrManifest",
    deprecated: false

  field :membership_resources, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1beta1.ResourceManifest,
    json_name: "membershipResources",
    deprecated: false

  field :connect_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.V1beta1.ResourceManifest,
    json_name: "connectResources",
    deprecated: false

  field :resource_options, 4,
    type: Google.Cloud.Gkehub.V1beta1.ResourceOptions,
    json_name: "resourceOptions",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.ResourceOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connect_version: String.t(),
          v1beta1_crd: boolean,
          k8s_version: String.t()
        }

  defstruct connect_version: "",
            v1beta1_crd: false,
            k8s_version: ""

  field :connect_version, 1, type: :string, json_name: "connectVersion", deprecated: false
  field :v1beta1_crd, 2, type: :bool, json_name: "v1beta1Crd", deprecated: false
  field :k8s_version, 3, type: :string, json_name: "k8sVersion", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.ResourceManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manifest: String.t(),
          cluster_scoped: boolean
        }

  defstruct manifest: "",
            cluster_scoped: false

  field :manifest, 1, type: :string
  field :cluster_scoped, 2, type: :bool, json_name: "clusterScoped"
end
defmodule Google.Cloud.Gkehub.V1beta1.GkeCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_link: String.t(),
          cluster_missing: boolean
        }

  defstruct resource_link: "",
            cluster_missing: false

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 3, type: :bool, json_name: "clusterMissing", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.OnPremCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_link: String.t(),
          cluster_missing: boolean,
          admin_cluster: boolean
        }

  defstruct resource_link: "",
            cluster_missing: false,
            admin_cluster: false

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
  field :admin_cluster, 3, type: :bool, json_name: "adminCluster", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.MultiCloudCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_link: String.t(),
          cluster_missing: boolean
        }

  defstruct resource_link: "",
            cluster_missing: false

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
  field :cluster_missing, 2, type: :bool, json_name: "clusterMissing", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.KubernetesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kubernetes_api_server_version: String.t(),
          node_provider_id: String.t(),
          node_count: integer,
          vcpu_count: integer,
          memory_mb: integer,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct kubernetes_api_server_version: "",
            node_provider_id: "",
            node_count: 0,
            vcpu_count: 0,
            memory_mb: 0,
            update_time: nil

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
defmodule Google.Cloud.Gkehub.V1beta1.Authority do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer: String.t(),
          workload_identity_pool: String.t(),
          identity_provider: String.t(),
          oidc_jwks: binary
        }

  defstruct issuer: "",
            workload_identity_pool: "",
            identity_provider: "",
            oidc_jwks: ""

  field :issuer, 1, type: :string, deprecated: false

  field :workload_identity_pool, 2,
    type: :string,
    json_name: "workloadIdentityPool",
    deprecated: false

  field :identity_provider, 3, type: :string, json_name: "identityProvider", deprecated: false
  field :oidc_jwks, 4, type: :bytes, json_name: "oidcJwks", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.MembershipState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Gkehub.V1beta1.MembershipState.Code.t(),
          description: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct code: :CODE_UNSPECIFIED,
            description: "",
            update_time: nil

  field :code, 1,
    type: Google.Cloud.Gkehub.V1beta1.MembershipState.Code,
    enum: true,
    deprecated: false

  field :description, 2, type: :string, deprecated: true

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: true
end
defmodule Google.Cloud.Gkehub.V1beta1.ListMembershipsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.ListMembershipsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Gkehub.V1beta1.Membership.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct resources: [],
            next_page_token: "",
            unreachable: []

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1beta1.Membership
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Gkehub.V1beta1.GetMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.CreateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          membership_id: String.t(),
          resource: Google.Cloud.Gkehub.V1beta1.Membership.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            membership_id: "",
            resource: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :membership_id, 2, type: :string, json_name: "membershipId", deprecated: false
  field :resource, 3, type: Google.Cloud.Gkehub.V1beta1.Membership, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.DeleteMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.UpdateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Gkehub.V1beta1.Membership.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            update_mask: nil,
            resource: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource, 3, type: Google.Cloud.Gkehub.V1beta1.Membership, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.GenerateConnectManifestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          connect_agent: Google.Cloud.Gkehub.V1beta1.ConnectAgent.t() | nil,
          version: String.t(),
          is_upgrade: boolean,
          registry: String.t(),
          image_pull_secret_content: binary
        }

  defstruct name: "",
            connect_agent: nil,
            version: "",
            is_upgrade: false,
            registry: "",
            image_pull_secret_content: ""

  field :name, 1, type: :string, deprecated: false

  field :connect_agent, 2,
    type: Google.Cloud.Gkehub.V1beta1.ConnectAgent,
    json_name: "connectAgent",
    deprecated: false

  field :version, 3, type: :string, deprecated: false
  field :is_upgrade, 4, type: :bool, json_name: "isUpgrade", deprecated: false
  field :registry, 5, type: :string, deprecated: false

  field :image_pull_secret_content, 6,
    type: :bytes,
    json_name: "imagePullSecretContent",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.GenerateConnectManifestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manifest: [Google.Cloud.Gkehub.V1beta1.ConnectAgentResource.t()]
        }

  defstruct manifest: []

  field :manifest, 1, repeated: true, type: Google.Cloud.Gkehub.V1beta1.ConnectAgentResource
end
defmodule Google.Cloud.Gkehub.V1beta1.ConnectAgentResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Gkehub.V1beta1.TypeMeta.t() | nil,
          manifest: String.t()
        }

  defstruct type: nil,
            manifest: ""

  field :type, 1, type: Google.Cloud.Gkehub.V1beta1.TypeMeta
  field :manifest, 2, type: :string
end
defmodule Google.Cloud.Gkehub.V1beta1.TypeMeta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          api_version: String.t()
        }

  defstruct kind: "",
            api_version: ""

  field :kind, 1, type: :string
  field :api_version, 2, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Gkehub.V1beta1.ConnectAgent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          proxy: binary,
          namespace: String.t()
        }

  defstruct name: "",
            proxy: "",
            namespace: ""

  field :name, 1, type: :string, deprecated: true
  field :proxy, 2, type: :bytes, deprecated: false
  field :namespace, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.ValidateExclusivityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cr_manifest: String.t(),
          intended_membership: String.t()
        }

  defstruct parent: "",
            cr_manifest: "",
            intended_membership: ""

  field :parent, 1, type: :string, deprecated: false
  field :cr_manifest, 2, type: :string, json_name: "crManifest", deprecated: false
  field :intended_membership, 3, type: :string, json_name: "intendedMembership", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.ValidateExclusivityResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil
        }

  defstruct status: nil

  field :status, 1, type: Google.Rpc.Status
end
defmodule Google.Cloud.Gkehub.V1beta1.GenerateExclusivityManifestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          crd_manifest: String.t(),
          cr_manifest: String.t()
        }

  defstruct name: "",
            crd_manifest: "",
            cr_manifest: ""

  field :name, 1, type: :string, deprecated: false
  field :crd_manifest, 2, type: :string, json_name: "crdManifest", deprecated: false
  field :cr_manifest, 3, type: :string, json_name: "crManifest", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1beta1.GenerateExclusivityManifestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crd_manifest: String.t(),
          cr_manifest: String.t()
        }

  defstruct crd_manifest: "",
            cr_manifest: ""

  field :crd_manifest, 1, type: :string, json_name: "crdManifest"
  field :cr_manifest, 2, type: :string, json_name: "crManifest"
end
defmodule Google.Cloud.Gkehub.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          cancel_requested: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            cancel_requested: false,
            api_version: ""

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
defmodule Google.Cloud.Gkehub.V1beta1.GkeHubMembershipService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkehub.v1beta1.GkeHubMembershipService"

  rpc :ListMemberships,
      Google.Cloud.Gkehub.V1beta1.ListMembershipsRequest,
      Google.Cloud.Gkehub.V1beta1.ListMembershipsResponse

  rpc :GetMembership,
      Google.Cloud.Gkehub.V1beta1.GetMembershipRequest,
      Google.Cloud.Gkehub.V1beta1.Membership

  rpc :CreateMembership,
      Google.Cloud.Gkehub.V1beta1.CreateMembershipRequest,
      Google.Longrunning.Operation

  rpc :DeleteMembership,
      Google.Cloud.Gkehub.V1beta1.DeleteMembershipRequest,
      Google.Longrunning.Operation

  rpc :UpdateMembership,
      Google.Cloud.Gkehub.V1beta1.UpdateMembershipRequest,
      Google.Longrunning.Operation

  rpc :GenerateConnectManifest,
      Google.Cloud.Gkehub.V1beta1.GenerateConnectManifestRequest,
      Google.Cloud.Gkehub.V1beta1.GenerateConnectManifestResponse

  rpc :ValidateExclusivity,
      Google.Cloud.Gkehub.V1beta1.ValidateExclusivityRequest,
      Google.Cloud.Gkehub.V1beta1.ValidateExclusivityResponse

  rpc :GenerateExclusivityManifest,
      Google.Cloud.Gkehub.V1beta1.GenerateExclusivityManifestRequest,
      Google.Cloud.Gkehub.V1beta1.GenerateExclusivityManifestResponse
end

defmodule Google.Cloud.Gkehub.V1beta1.GkeHubMembershipService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkehub.V1beta1.GkeHubMembershipService.Service
end
