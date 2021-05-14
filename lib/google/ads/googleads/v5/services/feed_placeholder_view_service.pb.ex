defmodule Google.Ads.Googleads.V5.Services.GetFeedPlaceholderViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.FeedPlaceholderViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.FeedPlaceholderViewService"

  rpc :GetFeedPlaceholderView,
      Google.Ads.Googleads.V5.Services.GetFeedPlaceholderViewRequest,
      Google.Ads.Googleads.V5.Resources.FeedPlaceholderView
end

defmodule Google.Ads.Googleads.V5.Services.FeedPlaceholderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.FeedPlaceholderViewService.Service
end
