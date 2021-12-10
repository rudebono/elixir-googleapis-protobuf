defmodule Google.Iam.V1beta.WorkloadIdentityPool.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :DELETED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETED, 2
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :DELETED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETED, 2
end
defmodule Google.Iam.V1beta.WorkloadIdentityPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Iam.V1beta.WorkloadIdentityPool.State.t(),
          disabled: boolean
        }

  defstruct name: "",
            display_name: "",
            description: "",
            state: :STATE_UNSPECIFIED,
            disabled: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :state, 4,
    type: Google.Iam.V1beta.WorkloadIdentityPool.State,
    enum: true,
    deprecated: false

  field :disabled, 5, type: :bool
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.Aws do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_id: String.t()
        }

  defstruct account_id: ""

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.Oidc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer_uri: String.t(),
          allowed_audiences: [String.t()]
        }

  defstruct issuer_uri: "",
            allowed_audiences: []

  field :issuer_uri, 1, type: :string, json_name: "issuerUri", deprecated: false
  field :allowed_audiences, 2, repeated: true, type: :string, json_name: "allowedAudiences"
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.AttributeMappingEntry do
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
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provider_config:
            {:aws, Google.Iam.V1beta.WorkloadIdentityPoolProvider.Aws.t() | nil}
            | {:oidc, Google.Iam.V1beta.WorkloadIdentityPoolProvider.Oidc.t() | nil},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Iam.V1beta.WorkloadIdentityPoolProvider.State.t(),
          disabled: boolean,
          attribute_mapping: %{String.t() => String.t()},
          attribute_condition: String.t()
        }

  defstruct provider_config: nil,
            name: "",
            display_name: "",
            description: "",
            state: :STATE_UNSPECIFIED,
            disabled: false,
            attribute_mapping: %{},
            attribute_condition: ""

  oneof :provider_config, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :state, 4,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.State,
    enum: true,
    deprecated: false

  field :disabled, 5, type: :bool

  field :attribute_mapping, 6,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.AttributeMappingEntry,
    json_name: "attributeMapping",
    map: true

  field :attribute_condition, 7, type: :string, json_name: "attributeCondition"
  field :aws, 8, type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.Aws, oneof: 0
  field :oidc, 9, type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.Oidc, oneof: 0
end
defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            show_deleted: false

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end
defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pools: [Google.Iam.V1beta.WorkloadIdentityPool.t()],
          next_page_token: String.t()
        }

  defstruct workload_identity_pools: [],
            next_page_token: ""

  field :workload_identity_pools, 1,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPool,
    json_name: "workloadIdentityPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.CreateWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workload_identity_pool: Google.Iam.V1beta.WorkloadIdentityPool.t() | nil,
          workload_identity_pool_id: String.t()
        }

  defstruct parent: "",
            workload_identity_pool: nil,
            workload_identity_pool_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :workload_identity_pool, 2,
    type: Google.Iam.V1beta.WorkloadIdentityPool,
    json_name: "workloadIdentityPool",
    deprecated: false

  field :workload_identity_pool_id, 3,
    type: :string,
    json_name: "workloadIdentityPoolId",
    deprecated: false
end
defmodule Google.Iam.V1beta.UpdateWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool: Google.Iam.V1beta.WorkloadIdentityPool.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct workload_identity_pool: nil,
            update_mask: nil

  field :workload_identity_pool, 1,
    type: Google.Iam.V1beta.WorkloadIdentityPool,
    json_name: "workloadIdentityPool",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Iam.V1beta.DeleteWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            show_deleted: false

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end
defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool_providers: [Google.Iam.V1beta.WorkloadIdentityPoolProvider.t()],
          next_page_token: String.t()
        }

  defstruct workload_identity_pool_providers: [],
            next_page_token: ""

  field :workload_identity_pool_providers, 1,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider,
    json_name: "workloadIdentityPoolProviders"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.CreateWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workload_identity_pool_provider:
            Google.Iam.V1beta.WorkloadIdentityPoolProvider.t() | nil,
          workload_identity_pool_provider_id: String.t()
        }

  defstruct parent: "",
            workload_identity_pool_provider: nil,
            workload_identity_pool_provider_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :workload_identity_pool_provider, 2,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider,
    json_name: "workloadIdentityPoolProvider",
    deprecated: false

  field :workload_identity_pool_provider_id, 3,
    type: :string,
    json_name: "workloadIdentityPoolProviderId",
    deprecated: false
end
defmodule Google.Iam.V1beta.UpdateWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool_provider:
            Google.Iam.V1beta.WorkloadIdentityPoolProvider.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct workload_identity_pool_provider: nil,
            update_mask: nil

  field :workload_identity_pool_provider, 1,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider,
    json_name: "workloadIdentityPoolProvider",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Iam.V1beta.DeleteWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Iam.V1beta.WorkloadIdentityPoolProviderOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Iam.V1beta.WorkloadIdentityPools.Service do
  @moduledoc false
  use GRPC.Service, name: "google.iam.v1beta.WorkloadIdentityPools"

  rpc :ListWorkloadIdentityPools,
      Google.Iam.V1beta.ListWorkloadIdentityPoolsRequest,
      Google.Iam.V1beta.ListWorkloadIdentityPoolsResponse

  rpc :GetWorkloadIdentityPool,
      Google.Iam.V1beta.GetWorkloadIdentityPoolRequest,
      Google.Iam.V1beta.WorkloadIdentityPool

  rpc :CreateWorkloadIdentityPool,
      Google.Iam.V1beta.CreateWorkloadIdentityPoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkloadIdentityPool,
      Google.Iam.V1beta.UpdateWorkloadIdentityPoolRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkloadIdentityPool,
      Google.Iam.V1beta.DeleteWorkloadIdentityPoolRequest,
      Google.Longrunning.Operation

  rpc :UndeleteWorkloadIdentityPool,
      Google.Iam.V1beta.UndeleteWorkloadIdentityPoolRequest,
      Google.Longrunning.Operation

  rpc :ListWorkloadIdentityPoolProviders,
      Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersRequest,
      Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersResponse

  rpc :GetWorkloadIdentityPoolProvider,
      Google.Iam.V1beta.GetWorkloadIdentityPoolProviderRequest,
      Google.Iam.V1beta.WorkloadIdentityPoolProvider

  rpc :CreateWorkloadIdentityPoolProvider,
      Google.Iam.V1beta.CreateWorkloadIdentityPoolProviderRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkloadIdentityPoolProvider,
      Google.Iam.V1beta.UpdateWorkloadIdentityPoolProviderRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkloadIdentityPoolProvider,
      Google.Iam.V1beta.DeleteWorkloadIdentityPoolProviderRequest,
      Google.Longrunning.Operation

  rpc :UndeleteWorkloadIdentityPoolProvider,
      Google.Iam.V1beta.UndeleteWorkloadIdentityPoolProviderRequest,
      Google.Longrunning.Operation
end

defmodule Google.Iam.V1beta.WorkloadIdentityPools.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Iam.V1beta.WorkloadIdentityPools.Service
end
