defmodule Google.Ads.Googleads.V8.Services.GetLanguageConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.LanguageConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.LanguageConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetLanguageConstant,
      Google.Ads.Googleads.V8.Services.GetLanguageConstantRequest,
      Google.Ads.Googleads.V8.Resources.LanguageConstant
end

defmodule Google.Ads.Googleads.V8.Services.LanguageConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.LanguageConstantService.Service
end
