defmodule Google.Ads.Googleads.V5.Services.GetParentalStatusViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.ParentalStatusViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.ParentalStatusViewService"

  rpc :GetParentalStatusView,
      Google.Ads.Googleads.V5.Services.GetParentalStatusViewRequest,
      Google.Ads.Googleads.V5.Resources.ParentalStatusView
end

defmodule Google.Ads.Googleads.V5.Services.ParentalStatusViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.ParentalStatusViewService.Service
end
