defmodule Google.Ads.Googleads.V8.Services.GetPaidOrganicSearchTermViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.PaidOrganicSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.PaidOrganicSearchTermViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetPaidOrganicSearchTermView,
      Google.Ads.Googleads.V8.Services.GetPaidOrganicSearchTermViewRequest,
      Google.Ads.Googleads.V8.Resources.PaidOrganicSearchTermView
end

defmodule Google.Ads.Googleads.V8.Services.PaidOrganicSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.PaidOrganicSearchTermViewService.Service
end
