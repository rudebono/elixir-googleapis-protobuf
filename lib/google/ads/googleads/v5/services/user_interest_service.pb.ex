defmodule Google.Ads.Googleads.V5.Services.GetUserInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.UserInterestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.UserInterestService"

  rpc :GetUserInterest,
      Google.Ads.Googleads.V5.Services.GetUserInterestRequest,
      Google.Ads.Googleads.V5.Resources.UserInterest
end

defmodule Google.Ads.Googleads.V5.Services.UserInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.UserInterestService.Service
end
