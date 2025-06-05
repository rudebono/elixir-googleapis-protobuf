defmodule Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.UserListCustomerTypeOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.UserListCustomerTypeOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.UserListCustomerType, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypeResult
end

defmodule Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypeResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.UserListCustomerTypeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.UserListCustomerTypeService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateUserListCustomerTypes,
      Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypesRequest,
      Google.Ads.Googleads.V20.Services.MutateUserListCustomerTypesResponse
end

defmodule Google.Ads.Googleads.V20.Services.UserListCustomerTypeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.UserListCustomerTypeService.Service
end
