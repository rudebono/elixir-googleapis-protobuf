defmodule Google.Ads.Googleads.V6.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V6.Services.AdOperation.t()],
          response_content_type:
            Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V6.Services.AdOperation

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V6.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          policy_validation_parameter:
            Google.Ads.Googleads.V6.Common.PolicyValidationParameter.t() | nil
        }

  defstruct [:operation, :update_mask, :policy_validation_parameter]

  oneof :operation, 0
  field :update_mask, 2, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 3,
    type: Google.Ads.Googleads.V6.Common.PolicyValidationParameter

  field :update, 1, type: Google.Ads.Googleads.V6.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V6.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V6.Services.MutateAdResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Ads.Googleads.V6.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V6.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad: Google.Ads.Googleads.V6.Resources.Ad.t() | nil
        }

  defstruct [:resource_name, :ad]

  field :resource_name, 1, type: :string
  field :ad, 2, type: Google.Ads.Googleads.V6.Resources.Ad
end
