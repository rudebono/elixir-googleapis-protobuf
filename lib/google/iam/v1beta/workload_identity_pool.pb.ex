defmodule Google.Iam.V1beta.WorkloadIdentityPool.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETED, 2
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETED, 2
end

defmodule Google.Iam.V1beta.WorkloadIdentityPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.Oidc do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :issuer_uri, 1, type: :string, json_name: "issuerUri", deprecated: false
  field :allowed_audiences, 2, repeated: true, type: :string, json_name: "allowedAudiences"
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider.AttributeMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workload_identity_pools, 1,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPool,
    json_name: "workloadIdentityPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.CreateWorkloadIdentityPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Iam.V1beta.ListWorkloadIdentityPoolProvidersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workload_identity_pool_providers, 1,
    repeated: true,
    type: Google.Iam.V1beta.WorkloadIdentityPoolProvider,
    json_name: "workloadIdentityPoolProviders"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Iam.V1beta.GetWorkloadIdentityPoolProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.CreateWorkloadIdentityPoolProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.UndeleteWorkloadIdentityPoolProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Iam.V1beta.WorkloadIdentityPoolProviderOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Iam.V1beta.WorkloadIdentityPools.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.iam.v1beta.WorkloadIdentityPools",
    protoc_gen_elixir_version: "0.14.1"

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
