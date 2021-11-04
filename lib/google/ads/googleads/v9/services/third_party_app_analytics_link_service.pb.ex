defmodule Google.Ads.Googleads.V9.Services.GetThirdPartyAppAnalyticsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.RegenerateShareableLinkIdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.RegenerateShareableLinkIdResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ThirdPartyAppAnalyticsLinkService"

  rpc :GetThirdPartyAppAnalyticsLink,
      Google.Ads.Googleads.V9.Services.GetThirdPartyAppAnalyticsLinkRequest,
      Google.Ads.Googleads.V9.Resources.ThirdPartyAppAnalyticsLink

  rpc :RegenerateShareableLinkId,
      Google.Ads.Googleads.V9.Services.RegenerateShareableLinkIdRequest,
      Google.Ads.Googleads.V9.Services.RegenerateShareableLinkIdResponse
end

defmodule Google.Ads.Googleads.V9.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.ThirdPartyAppAnalyticsLinkService.Service
end
