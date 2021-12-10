defmodule Google.Ads.Googleads.V8.Services.GetBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8.Services.BillingSetupOperation.t() | nil
        }

  defstruct customer_id: "",
            operation: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V8.Services.BillingSetupOperation,
    deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.BillingSetup.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 2, type: Google.Ads.Googleads.V8.Resources.BillingSetup, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8.Services.MutateBillingSetupResult.t() | nil
        }

  defstruct result: nil

  field :result, 1, type: Google.Ads.Googleads.V8.Services.MutateBillingSetupResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V8.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BillingSetupService"

  rpc :GetBillingSetup,
      Google.Ads.Googleads.V8.Services.GetBillingSetupRequest,
      Google.Ads.Googleads.V8.Resources.BillingSetup

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V8.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V8.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V8.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.BillingSetupService.Service
end
