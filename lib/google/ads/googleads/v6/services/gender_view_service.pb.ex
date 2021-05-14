defmodule Google.Ads.Googleads.V6.Services.GetGenderViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.GenderViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v6.services.GenderViewService"

  rpc :GetGenderView,
      Google.Ads.Googleads.V6.Services.GetGenderViewRequest,
      Google.Ads.Googleads.V6.Resources.GenderView
end

defmodule Google.Ads.Googleads.V6.Services.GenderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V6.Services.GenderViewService.Service
end
