defmodule Google.Ads.Googleads.V8.Services.GetGenderViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.GenderViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.GenderViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetGenderView,
      Google.Ads.Googleads.V8.Services.GetGenderViewRequest,
      Google.Ads.Googleads.V8.Resources.GenderView
end

defmodule Google.Ads.Googleads.V8.Services.GenderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GenderViewService.Service
end
