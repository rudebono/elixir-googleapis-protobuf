defmodule Google.Ads.Googleads.V7.Services.GetClickViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ClickViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ClickViewService"

  rpc :GetClickView,
      Google.Ads.Googleads.V7.Services.GetClickViewRequest,
      Google.Ads.Googleads.V7.Resources.ClickView
end

defmodule Google.Ads.Googleads.V7.Services.ClickViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ClickViewService.Service
end
