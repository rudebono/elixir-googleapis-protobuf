defmodule Google.Ads.Googleads.V5.Services.GetBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V5.Services.BillingSetupOperation.t() | nil
        }

  defstruct [:customer_id, :operation]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V5.Services.BillingSetupOperation
end

defmodule Google.Ads.Googleads.V5.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 2, type: Google.Ads.Googleads.V5.Resources.BillingSetup, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V5.Services.MutateBillingSetupResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V5.Services.MutateBillingSetupResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.BillingSetupService"

  rpc :GetBillingSetup,
      Google.Ads.Googleads.V5.Services.GetBillingSetupRequest,
      Google.Ads.Googleads.V5.Resources.BillingSetup

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V5.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V5.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V5.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.BillingSetupService.Service
end
