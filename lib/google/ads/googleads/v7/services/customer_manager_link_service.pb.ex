defmodule Google.Ads.Googleads.V7.Services.GetCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.CustomerManagerLinkOperation.t()],
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CustomerManagerLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.MoveManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          previous_customer_manager_link: String.t(),
          new_manager: String.t(),
          validate_only: boolean
        }

  defstruct customer_id: "",
            previous_customer_manager_link: "",
            new_manager: "",
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :previous_customer_manager_link, 2,
    type: :string,
    json_name: "previousCustomerManagerLink",
    deprecated: false

  field :new_manager, 3, type: :string, json_name: "newManager", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.CustomerManagerLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {:update, Google.Ads.Googleads.V7.Resources.CustomerManagerLink.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.CustomerManagerLink, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkResult.t()]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkResult
end
defmodule Google.Ads.Googleads.V7.Services.MoveManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.CustomerManagerLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CustomerManagerLinkService"

  rpc :GetCustomerManagerLink,
      Google.Ads.Googleads.V7.Services.GetCustomerManagerLinkRequest,
      Google.Ads.Googleads.V7.Resources.CustomerManagerLink

  rpc :MutateCustomerManagerLink,
      Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkRequest,
      Google.Ads.Googleads.V7.Services.MutateCustomerManagerLinkResponse

  rpc :MoveManagerLink,
      Google.Ads.Googleads.V7.Services.MoveManagerLinkRequest,
      Google.Ads.Googleads.V7.Services.MoveManagerLinkResponse
end

defmodule Google.Ads.Googleads.V7.Services.CustomerManagerLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CustomerManagerLinkService.Service
end
