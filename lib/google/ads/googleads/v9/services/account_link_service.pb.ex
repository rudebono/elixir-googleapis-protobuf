defmodule Google.Ads.Googleads.V9.Services.GetAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CreateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          account_link: Google.Ads.Googleads.V9.Resources.AccountLink.t() | nil
        }

  defstruct [:customer_id, :account_link]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :account_link, 2,
    type: Google.Ads.Googleads.V9.Resources.AccountLink,
    json_name: "accountLink"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CreateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V9.Services.AccountLinkOperation.t() | nil,
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :operation, 2, type: Google.Ads.Googleads.V9.Services.AccountLinkOperation
  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AccountLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V9.Resources.AccountLink.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.AccountLink, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V9.Services.MutateAccountLinkResult.t() | nil,
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:result, :partial_failure_error]

  field :result, 1, type: Google.Ads.Googleads.V9.Services.MutateAccountLinkResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AccountLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AccountLinkService"

  rpc :GetAccountLink,
      Google.Ads.Googleads.V9.Services.GetAccountLinkRequest,
      Google.Ads.Googleads.V9.Resources.AccountLink

  rpc :CreateAccountLink,
      Google.Ads.Googleads.V9.Services.CreateAccountLinkRequest,
      Google.Ads.Googleads.V9.Services.CreateAccountLinkResponse

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V9.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V9.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V9.Services.AccountLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AccountLinkService.Service
end
