defmodule Google.Cloud.Gkehub.V1.MembershipState.Code do
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
defmodule Google.Cloud.Gkehub.V1.Membership.LabelsEntry do
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
defmodule Google.Cloud.Gkehub.V1.Membership do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:endpoint, Google.Cloud.Gkehub.V1.MembershipEndpoint.t() | nil},
          name: String.t(),
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Gkehub.V1.MembershipState.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          external_id: String.t(),
          last_connection_time: Google.Protobuf.Timestamp.t() | nil,
          unique_id: String.t(),
          authority: Google.Cloud.Gkehub.V1.Authority.t() | nil
        }

  defstruct type: nil,
            name: "",
            labels: %{},
            description: "",
            state: nil,
            create_time: nil,
            update_time: nil,
            delete_time: nil,
            external_id: "",
            last_connection_time: nil,
            unique_id: "",
            authority: nil

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
end
defmodule Google.Cloud.Gkehub.V1.MembershipEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gke_cluster: Google.Cloud.Gkehub.V1.GkeCluster.t() | nil,
          kubernetes_metadata: Google.Cloud.Gkehub.V1.KubernetesMetadata.t() | nil
        }

  defstruct gke_cluster: nil,
            kubernetes_metadata: nil

  field :gke_cluster, 1,
    type: Google.Cloud.Gkehub.V1.GkeCluster,
    json_name: "gkeCluster",
    deprecated: false

  field :kubernetes_metadata, 2,
    type: Google.Cloud.Gkehub.V1.KubernetesMetadata,
    json_name: "kubernetesMetadata",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.GkeCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_link: String.t()
        }

  defstruct resource_link: ""

  field :resource_link, 1, type: :string, json_name: "resourceLink", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.KubernetesMetadata do
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
defmodule Google.Cloud.Gkehub.V1.MembershipState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Gkehub.V1.MembershipState.Code.t()
        }

  defstruct code: :CODE_UNSPECIFIED

  field :code, 1, type: Google.Cloud.Gkehub.V1.MembershipState.Code, enum: true, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.Authority do
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
