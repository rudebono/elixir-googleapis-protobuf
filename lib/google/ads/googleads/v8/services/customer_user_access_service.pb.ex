defmodule Google.Ads.Googleads.V8.Services.GetCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8.Services.CustomerUserAccessOperation.t() | nil
        }

  defstruct customer_id: "",
            operation: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V8.Services.CustomerUserAccessOperation,
    deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V8.Resources.CustomerUserAccess.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V8.Resources.CustomerUserAccess, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResult.t() | nil
        }

  defstruct result: nil

  field :result, 1, type: Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerUserAccessService"

  rpc :GetCustomerUserAccess,
      Google.Ads.Googleads.V8.Services.GetCustomerUserAccessRequest,
      Google.Ads.Googleads.V8.Resources.CustomerUserAccess

  rpc :MutateCustomerUserAccess,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Service
end
