defmodule Google.Ads.Googleads.V9.Services.GetCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.CustomerManagerLinkOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomerManagerLinkOperation

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MoveManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          previous_customer_manager_link: String.t(),
          new_manager: String.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :previous_customer_manager_link, :new_manager, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :previous_customer_manager_link, 2,
    type: :string,
    json_name: "previousCustomerManagerLink"

  field :new_manager, 3, type: :string, json_name: "newManager"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomerManagerLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {:update, Google.Ads.Googleads.V9.Resources.CustomerManagerLink.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomerManagerLink, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MoveManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomerManagerLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomerManagerLinkService"

  rpc :GetCustomerManagerLink,
      Google.Ads.Googleads.V9.Services.GetCustomerManagerLinkRequest,
      Google.Ads.Googleads.V9.Resources.CustomerManagerLink

  rpc :MutateCustomerManagerLink,
      Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerManagerLinkResponse

  rpc :MoveManagerLink,
      Google.Ads.Googleads.V9.Services.MoveManagerLinkRequest,
      Google.Ads.Googleads.V9.Services.MoveManagerLinkResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerManagerLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerManagerLinkService.Service
end
