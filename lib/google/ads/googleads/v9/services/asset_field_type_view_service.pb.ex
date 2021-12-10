defmodule Google.Ads.Googleads.V9.Services.GetAssetFieldTypeViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.AssetFieldTypeViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AssetFieldTypeViewService"

  rpc :GetAssetFieldTypeView,
      Google.Ads.Googleads.V9.Services.GetAssetFieldTypeViewRequest,
      Google.Ads.Googleads.V9.Resources.AssetFieldTypeView
end

defmodule Google.Ads.Googleads.V9.Services.AssetFieldTypeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AssetFieldTypeViewService.Service
end
