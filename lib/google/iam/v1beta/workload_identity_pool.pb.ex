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

  defstruct [:name, :display_name, :description, :state, :disabled]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :state, 4, type: Google.Iam.V1beta.WorkloadIdentityPool.State, enum: true
  field :disabled, 5, type: :bool
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.Aws do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_id: String.t()
        }

  defstruct [:account_id]

  field :account_id, 1, type: :string
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.Oidc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer_uri: String.t(),
          allowed_audiences: [String.t()]
        }

  defstruct [:issuer_uri, :allowed_audiences]

  field :issuer_uri, 1, type: :string
  field :allowed_audiences, 2, repeated: true, type: :string
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.AttributeMappingEntry do
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

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provider_config: {atom, any},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Iam.V1beta.WorkloadIdentityPoolProvider.State.t(),
          disabled: boolean,
          attribute_mapping: %{String.t() => String.t()},
          attribute_condition: String.t()
        }

  defstruct [
    :provider_config,
    :name,
    :display_name,
    :description,
    :state,
    :disabled,
    :attribute_mapping,
    :attribute_condition
  ]

  oneof :provider_config, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :state, 4, type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.State, enum: true
  field :disabled, 5, type: :bool

  field :attribute_mapping, 6,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider.AttributeMappingEntry,
    map: true

  field :attribute_condition, 7, type: :string
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

  defstruct [:parent, :page_size, :page_token, :show_deleted]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :show_deleted, 4, type: :bool
end

defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pools: [Google.Iam.V1beta.WorkloadIdentityPool.t()],
          next_page_token: String.t()
        }

  defstruct [:workload_identity_pools, :next_page_token]

  field :workload_identity_pools, 1, repeated: true, type: Google.Iam.V1beta.WorkloadIdentityPool
  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.V1beta.CreateWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workload_identity_pool: Google.Iam.V1beta.WorkloadIdentityPool.t() | nil,
          workload_identity_pool_id: String.t()
        }

  defstruct [:parent, :workload_identity_pool, :workload_identity_pool_id]

  field :parent, 1, type: :string
  field :workload_identity_pool, 2, type: Google.Iam.V1beta.WorkloadIdentityPool
  field :workload_identity_pool_id, 3, type: :string
end

defmodule Google.Iam.V1beta.UpdateWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool: Google.Iam.V1beta.WorkloadIdentityPool.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:workload_identity_pool, :update_mask]

  field :workload_identity_pool, 1, type: Google.Iam.V1beta.WorkloadIdentityPool
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Iam.V1beta.DeleteWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:parent, :page_size, :page_token, :show_deleted]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :show_deleted, 4, type: :bool
end

defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool_providers: [Google.Iam.V1beta.WorkloadIdentityPoolProvider.t()],
          next_page_token: String.t()
        }

  defstruct [:workload_identity_pool_providers, :next_page_token]

  field :workload_identity_pool_providers, 1,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider

  field :next_page_token, 2, type: :string
end

defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:parent, :workload_identity_pool_provider, :workload_identity_pool_provider_id]

  field :parent, 1, type: :string
  field :workload_identity_pool_provider, 2, type: Google.Iam.V1beta.WorkloadIdentityPoolProvider
  field :workload_identity_pool_provider_id, 3, type: :string
end

defmodule Google.Iam.V1beta.UpdateWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_identity_pool_provider:
            Google.Iam.V1beta.WorkloadIdentityPoolProvider.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:workload_identity_pool_provider, :update_mask]

  field :workload_identity_pool_provider, 1, type: Google.Iam.V1beta.WorkloadIdentityPoolProvider
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Iam.V1beta.DeleteWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolProviderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
