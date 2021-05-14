defmodule Google.Ads.Googleads.V4.Services.GetAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V4.Services.AccountLinkOperation.t() | nil,
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V4.Services.AccountLinkOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.AccountLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.AccountLink, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V4.Services.MutateAccountLinkResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V4.Services.MutateAccountLinkResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAccountLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AccountLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AccountLinkService"

  rpc :GetAccountLink,
      Google.Ads.Googleads.V4.Services.GetAccountLinkRequest,
      Google.Ads.Googleads.V4.Resources.AccountLink

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V4.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V4.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V4.Services.AccountLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AccountLinkService.Service
end
