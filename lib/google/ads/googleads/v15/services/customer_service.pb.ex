defmodule Google.Ads.Googleads.V15.Services.MutateCustomerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 4,
    type: Google.Ads.Googleads.V15.Services.CustomerOperation,
    deprecated: false

  field :validate_only, 5, type: :bool, json_name: "validateOnly"

  field :response_content_type, 6,
    type: Google.Ads.Googleads.V15.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V15.Services.CreateCustomerClientRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_client, 2,
    type: Google.Ads.Googleads.V15.Resources.Customer,
    json_name: "customerClient",
    deprecated: false

  field :email_address, 5, proto3_optional: true, type: :string, json_name: "emailAddress"

  field :access_role, 4,
    type: Google.Ads.Googleads.V15.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true

  field :validate_only, 6, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V15.Services.CustomerOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update, 1, type: Google.Ads.Googleads.V15.Resources.Customer
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Ads.Googleads.V15.Services.CreateCustomerClientResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
  field :invitation_link, 3, type: :string, json_name: "invitationLink"
end

defmodule Google.Ads.Googleads.V15.Services.MutateCustomerResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 2, type: Google.Ads.Googleads.V15.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V15.Services.MutateCustomerResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :customer, 2, type: Google.Ads.Googleads.V15.Resources.Customer
end

defmodule Google.Ads.Googleads.V15.Services.ListAccessibleCustomersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V15.Services.ListAccessibleCustomersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
end

defmodule Google.Ads.Googleads.V15.Services.CustomerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.CustomerService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCustomer,
      Google.Ads.Googleads.V15.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V15.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V15.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V15.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V15.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V15.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V15.Services.CustomerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.CustomerService.Service
end