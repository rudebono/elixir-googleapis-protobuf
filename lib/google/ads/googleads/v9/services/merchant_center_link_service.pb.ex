defmodule Google.Ads.Googleads.V9.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct [:customer_id]

  field :customer_id, 1, type: :string, json_name: "customerId"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_center_links: [Google.Ads.Googleads.V9.Resources.MerchantCenterLink.t()]
        }

  defstruct [:merchant_center_links]

  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Resources.MerchantCenterLink,
    json_name: "merchantCenterLinks"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V9.Services.MerchantCenterLinkOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :operation, 2, type: Google.Ads.Googleads.V9.Services.MerchantCenterLinkOperation
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V9.Resources.MerchantCenterLink.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V9.Resources.MerchantCenterLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.MerchantCenterLinkService"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V9.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V9.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V9.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V9.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V9.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V9.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.MerchantCenterLinkService.Service
end
