defmodule Google.Ads.Googleads.V5.Services.GetAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.CreateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          account_link: Google.Ads.Googleads.V5.Resources.AccountLink.t() | nil
        }

  defstruct [:customer_id, :account_link]

  field :customer_id, 1, type: :string
  field :account_link, 2, type: Google.Ads.Googleads.V5.Resources.AccountLink
end

defmodule Google.Ads.Googleads.V5.Services.CreateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V5.Services.AccountLinkOperation.t() | nil,
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V5.Services.AccountLinkOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V5.Services.AccountLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V5.Services.MutateAccountLinkResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V5.Services.MutateAccountLinkResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.AccountLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AccountLinkService"

  rpc :GetAccountLink,
      Google.Ads.Googleads.V5.Services.GetAccountLinkRequest,
      Google.Ads.Googleads.V5.Resources.AccountLink

  rpc :CreateAccountLink,
      Google.Ads.Googleads.V5.Services.CreateAccountLinkRequest,
      Google.Ads.Googleads.V5.Services.CreateAccountLinkResponse

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V5.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V5.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V5.Services.AccountLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AccountLinkService.Service
end
