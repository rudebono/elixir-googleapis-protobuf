defmodule Google.Cloud.Gkehub.V1alpha2.Membership.InfrastructureType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INFRASTRUCTURE_TYPE_UNSPECIFIED | :ON_PREM | :MULTI_CLOUD

  field :INFRASTRUCTURE_TYPE_UNSPECIFIED, 0

  field :ON_PREM, 1

  field :MULTI_CLOUD, 2
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipState.Code do
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

defmodule Google.Cloud.Gkehub.V1alpha2.Membership.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.Membership do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any},
          name: String.t(),
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Gkehub.V1alpha2.MembershipState.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          external_id: String.t(),
          authority: Google.Cloud.Gkehub.V1alpha2.Authority.t() | nil,
          last_connection_time: Google.Protobuf.Timestamp.t() | nil,
          unique_id: String.t(),
          infrastructure_type: Google.Cloud.Gkehub.V1alpha2.Membership.InfrastructureType.t()
        }

  defstruct [
    :type,
    :name,
    :labels,
    :description,
    :state,
    :create_time,
    :update_time,
    :delete_time,
    :external_id,
    :authority,
    :last_connection_time,
    :unique_id,
    :infrastructure_type
  ]

  oneof :type, 0
  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha2.Membership.LabelsEntry,
    map: true

  field :description, 3, type: :string
  field :endpoint, 4, type: Google.Cloud.Gkehub.V1alpha2.MembershipEndpoint, oneof: 0
  field :state, 5, type: Google.Cloud.Gkehub.V1alpha2.MembershipState
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :delete_time, 8, type: Google.Protobuf.Timestamp
  field :external_id, 9, type: :string
  field :authority, 10, type: Google.Cloud.Gkehub.V1alpha2.Authority
  field :last_connection_time, 11, type: Google.Protobuf.Timestamp
  field :unique_id, 12, type: :string

  field :infrastructure_type, 13,
    type: Google.Cloud.Gkehub.V1alpha2.Membership.InfrastructureType,
    enum: true
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gke_cluster: Google.Cloud.Gkehub.V1alpha2.GkeCluster.t() | nil,
          kubernetes_metadata: Google.Cloud.Gkehub.V1alpha2.KubernetesMetadata.t() | nil,
          kubernetes_resource: Google.Cloud.Gkehub.V1alpha2.KubernetesResource.t() | nil
        }

  defstruct [:gke_cluster, :kubernetes_metadata, :kubernetes_resource]

  field :gke_cluster, 1, type: Google.Cloud.Gkehub.V1alpha2.GkeCluster
  field :kubernetes_metadata, 2, type: Google.Cloud.Gkehub.V1alpha2.KubernetesMetadata
  field :kubernetes_resource, 3, type: Google.Cloud.Gkehub.V1alpha2.KubernetesResource
end

defmodule Google.Cloud.Gkehub.V1alpha2.KubernetesResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          membership_cr_manifest: String.t(),
          membership_resources: [Google.Cloud.Gkehub.V1alpha2.ResourceManifest.t()],
          connect_resources: [Google.Cloud.Gkehub.V1alpha2.ResourceManifest.t()],
          resource_options: Google.Cloud.Gkehub.V1alpha2.ResourceOptions.t() | nil
        }

  defstruct [
    :membership_cr_manifest,
    :membership_resources,
    :connect_resources,
    :resource_options
  ]

  field :membership_cr_manifest, 1, type: :string

  field :membership_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha2.ResourceManifest

  field :connect_resources, 4, repeated: true, type: Google.Cloud.Gkehub.V1alpha2.ResourceManifest
  field :resource_options, 5, type: Google.Cloud.Gkehub.V1alpha2.ResourceOptions
end

defmodule Google.Cloud.Gkehub.V1alpha2.ResourceOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connect_version: String.t(),
          v1beta1_crd: boolean
        }

  defstruct [:connect_version, :v1beta1_crd]

  field :connect_version, 1, type: :string
  field :v1beta1_crd, 2, type: :bool
end

defmodule Google.Cloud.Gkehub.V1alpha2.GkeCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_link: String.t()
        }

  defstruct [:resource_link]

  field :resource_link, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.KubernetesMetadata do
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

  defstruct [
    :kubernetes_api_server_version,
    :node_provider_id,
    :node_count,
    :vcpu_count,
    :memory_mb,
    :update_time
  ]

  field :kubernetes_api_server_version, 1, type: :string
  field :node_provider_id, 2, type: :string
  field :node_count, 3, type: :int32
  field :vcpu_count, 4, type: :int32
  field :memory_mb, 5, type: :int32
  field :update_time, 100, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gkehub.V1alpha2.Authority do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer: String.t(),
          oidc_jwks: binary,
          identity_provider: String.t(),
          workload_identity_pool: String.t()
        }

  defstruct [:issuer, :oidc_jwks, :identity_provider, :workload_identity_pool]

  field :issuer, 1, type: :string
  field :oidc_jwks, 5, type: :bytes
  field :identity_provider, 3, type: :string
  field :workload_identity_pool, 4, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.MembershipState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Gkehub.V1alpha2.MembershipState.Code.t()
        }

  defstruct [:code]

  field :code, 1, type: Google.Cloud.Gkehub.V1alpha2.MembershipState.Code, enum: true
end

defmodule Google.Cloud.Gkehub.V1alpha2.ListMembershipsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.ListMembershipsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Gkehub.V1alpha2.Membership.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:resources, :next_page_token, :unreachable]

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1alpha2.Membership
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.GetMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.CreateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          membership_id: String.t(),
          resource: Google.Cloud.Gkehub.V1alpha2.Membership.t() | nil
        }

  defstruct [:parent, :membership_id, :resource]

  field :parent, 1, type: :string
  field :membership_id, 2, type: :string
  field :resource, 3, type: Google.Cloud.Gkehub.V1alpha2.Membership
end

defmodule Google.Cloud.Gkehub.V1alpha2.DeleteMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.UpdateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Gkehub.V1alpha2.Membership.t() | nil
        }

  defstruct [:name, :update_mask, :resource]

  field :name, 1, type: :string
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :resource, 3, type: Google.Cloud.Gkehub.V1alpha2.Membership
end

defmodule Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          namespace: String.t(),
          proxy: binary,
          version: String.t(),
          is_upgrade: boolean,
          registry: String.t(),
          image_pull_secret_content: binary
        }

  defstruct [
    :name,
    :namespace,
    :proxy,
    :version,
    :is_upgrade,
    :registry,
    :image_pull_secret_content
  ]

  field :name, 1, type: :string
  field :namespace, 2, type: :string
  field :proxy, 3, type: :bytes
  field :version, 4, type: :string
  field :is_upgrade, 5, type: :bool
  field :registry, 6, type: :string
  field :image_pull_secret_content, 7, type: :bytes
end

defmodule Google.Cloud.Gkehub.V1alpha2.GenerateConnectManifestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manifest: [Google.Cloud.Gkehub.V1alpha2.ConnectAgentResource.t()]
        }

  defstruct [:manifest]

  field :manifest, 1, repeated: true, type: Google.Cloud.Gkehub.V1alpha2.ConnectAgentResource
end

defmodule Google.Cloud.Gkehub.V1alpha2.ConnectAgentResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Gkehub.V1alpha2.TypeMeta.t() | nil,
          manifest: String.t()
        }

  defstruct [:type, :manifest]

  field :type, 1, type: Google.Cloud.Gkehub.V1alpha2.TypeMeta
  field :manifest, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.ResourceManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manifest: String.t(),
          cluster_scoped: boolean
        }

  defstruct [:manifest, :cluster_scoped]

  field :manifest, 1, type: :string
  field :cluster_scoped, 2, type: :bool
end

defmodule Google.Cloud.Gkehub.V1alpha2.TypeMeta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          api_version: String.t()
        }

  defstruct [:kind, :api_version]

  field :kind, 1, type: :string
  field :api_version, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.InitializeHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t()
        }

  defstruct [:project]

  field :project, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.InitializeHubResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_identity: String.t(),
          workload_identity_pool: String.t()
        }

  defstruct [:service_identity, :workload_identity_pool]

  field :service_identity, 1, type: :string
  field :workload_identity_pool, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.OperationMetadata do
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

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_detail,
    :cancel_requested,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string
  field :cancel_requested, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha2.GkeHub.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkehub.v1alpha2.GkeHub"

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
