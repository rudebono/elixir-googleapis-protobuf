defmodule Google.Ads.Googleads.V6.Services.GetOperatingSystemVersionConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.OperatingSystemVersionConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v6.services.OperatingSystemVersionConstantService"

  rpc :GetOperatingSystemVersionConstant,
      Google.Ads.Googleads.V6.Services.GetOperatingSystemVersionConstantRequest,
      Google.Ads.Googleads.V6.Resources.OperatingSystemVersionConstant
end

defmodule Google.Ads.Googleads.V6.Services.OperatingSystemVersionConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V6.Services.OperatingSystemVersionConstantService.Service
end
