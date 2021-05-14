defmodule Google.Ads.Googleads.V5.Services.GetTopicViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.TopicViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.TopicViewService"

  rpc :GetTopicView,
      Google.Ads.Googleads.V5.Services.GetTopicViewRequest,
      Google.Ads.Googleads.V5.Resources.TopicView
end

defmodule Google.Ads.Googleads.V5.Services.TopicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.TopicViewService.Service
end
