defmodule Google.Ads.Googleads.V9.Services.GetCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V9.Services.CustomerClientLinkOperation.t() | nil,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operation: nil,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V9.Services.CustomerClientLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V9.Services.CustomerClientLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.CustomerClientLink.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.CustomerClientLink.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomerClientLink, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomerClientLink, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkResult.t() | nil
        }

  defstruct result: nil

  field :result, 1, type: Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V9.Services.CustomerClientLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomerClientLinkService"

  rpc :GetCustomerClientLink,
      Google.Ads.Googleads.V9.Services.GetCustomerClientLinkRequest,
      Google.Ads.Googleads.V9.Resources.CustomerClientLink

  rpc :MutateCustomerClientLink,
      Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerClientLinkResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerClientLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerClientLinkService.Service
end
