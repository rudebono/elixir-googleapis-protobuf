defmodule Google.Ads.Googleads.V8.Services.GetCampaignAudienceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.CampaignAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignAudienceViewService"

  rpc :GetCampaignAudienceView,
      Google.Ads.Googleads.V8.Services.GetCampaignAudienceViewRequest,
      Google.Ads.Googleads.V8.Resources.CampaignAudienceView
end

defmodule Google.Ads.Googleads.V8.Services.CampaignAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignAudienceViewService.Service
end
