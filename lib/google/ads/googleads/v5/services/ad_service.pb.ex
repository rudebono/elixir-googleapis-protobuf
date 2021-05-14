defmodule Google.Ads.Googleads.V5.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.AdOperation.t()],
          response_content_type:
            Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V5.Services.AdOperation

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V5.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V5.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V5.Services.MutateAdResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Ads.Googleads.V5.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad: Google.Ads.Googleads.V5.Resources.Ad.t() | nil
        }

  defstruct [:resource_name, :ad]

  field :resource_name, 1, type: :string
  field :ad, 2, type: Google.Ads.Googleads.V5.Resources.Ad
end

defmodule Google.Ads.Googleads.V5.Services.AdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.AdService"

  rpc :GetAd, Google.Ads.Googleads.V5.Services.GetAdRequest, Google.Ads.Googleads.V5.Resources.Ad

  rpc :MutateAds,
      Google.Ads.Googleads.V5.Services.MutateAdsRequest,
      Google.Ads.Googleads.V5.Services.MutateAdsResponse
end

defmodule Google.Ads.Googleads.V5.Services.AdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.AdService.Service
end
