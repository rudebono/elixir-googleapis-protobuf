defmodule Google.Ads.Googleads.V8.Services.GetDisplayKeywordViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.DisplayKeywordViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.DisplayKeywordViewService"

  rpc :GetDisplayKeywordView,
      Google.Ads.Googleads.V8.Services.GetDisplayKeywordViewRequest,
      Google.Ads.Googleads.V8.Resources.DisplayKeywordView
end

defmodule Google.Ads.Googleads.V8.Services.DisplayKeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.DisplayKeywordViewService.Service
end
