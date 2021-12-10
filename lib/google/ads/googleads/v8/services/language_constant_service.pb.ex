defmodule Google.Ads.Googleads.V8.Services.GetLanguageConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.LanguageConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.LanguageConstantService"

  rpc :GetLanguageConstant,
      Google.Ads.Googleads.V8.Services.GetLanguageConstantRequest,
      Google.Ads.Googleads.V8.Resources.LanguageConstant
end

defmodule Google.Ads.Googleads.V8.Services.LanguageConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.LanguageConstantService.Service
end
