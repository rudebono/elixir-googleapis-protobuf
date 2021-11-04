defmodule Google.Ads.Googleads.V7.Services.GetChangeStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ChangeStatusService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ChangeStatusService"

  rpc :GetChangeStatus,
      Google.Ads.Googleads.V7.Services.GetChangeStatusRequest,
      Google.Ads.Googleads.V7.Resources.ChangeStatus
end

defmodule Google.Ads.Googleads.V7.Services.ChangeStatusService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ChangeStatusService.Service
end
