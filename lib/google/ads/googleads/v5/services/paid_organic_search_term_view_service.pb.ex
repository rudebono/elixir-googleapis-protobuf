defmodule Google.Ads.Googleads.V5.Services.GetPaidOrganicSearchTermViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.PaidOrganicSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.PaidOrganicSearchTermViewService"

  rpc :GetPaidOrganicSearchTermView,
      Google.Ads.Googleads.V5.Services.GetPaidOrganicSearchTermViewRequest,
      Google.Ads.Googleads.V5.Resources.PaidOrganicSearchTermView
end

defmodule Google.Ads.Googleads.V5.Services.PaidOrganicSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V5.Services.PaidOrganicSearchTermViewService.Service
end
