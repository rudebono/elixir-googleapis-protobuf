defmodule Google.Ads.Googleads.V9.Services.GetIncomeRangeViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.IncomeRangeViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetIncomeRangeView,
      Google.Ads.Googleads.V9.Services.GetIncomeRangeViewRequest,
      Google.Ads.Googleads.V9.Resources.IncomeRangeView
end

defmodule Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Service
end
