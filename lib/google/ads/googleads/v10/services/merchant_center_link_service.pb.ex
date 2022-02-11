defmodule Google.Ads.Googleads.V10.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct customer_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_center_links: [Google.Ads.Googleads.V10.Resources.MerchantCenterLink.t()]
        }

  defstruct merchant_center_links: []

  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.MerchantCenterLink,
    json_name: "merchantCenterLinks"
end
defmodule Google.Ads.Googleads.V10.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V10.Services.MerchantCenterLinkOperation.t() | nil,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operation: nil,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V10.Services.MerchantCenterLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V10.Resources.MerchantCenterLink.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V10.Resources.MerchantCenterLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkResult.t() | nil
        }

  defstruct result: nil

  field :result, 2, type: Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.MerchantCenterLinkService"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V10.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V10.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V10.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V10.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V10.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V10.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.MerchantCenterLinkService.Service
end
