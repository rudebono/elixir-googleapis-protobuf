defmodule Google.Ads.Googleads.V8.Services.GetKeywordViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.KeywordViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordViewService"

  rpc :GetKeywordView,
      Google.Ads.Googleads.V8.Services.GetKeywordViewRequest,
      Google.Ads.Googleads.V8.Resources.KeywordView
end

defmodule Google.Ads.Googleads.V8.Services.KeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordViewService.Service
end
