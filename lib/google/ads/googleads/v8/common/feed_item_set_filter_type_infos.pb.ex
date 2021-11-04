defmodule Google.Ads.Googleads.V8.Common.DynamicLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: [String.t()],
          business_name_filter: Google.Ads.Googleads.V8.Common.BusinessNameFilter.t() | nil
        }

  defstruct [:labels, :business_name_filter]

  field :labels, 1, repeated: true, type: :string

  field :business_name_filter, 2,
    type: Google.Ads.Googleads.V8.Common.BusinessNameFilter,
    json_name: "businessNameFilter"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Common.BusinessNameFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          filter_type:
            Google.Ads.Googleads.V8.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType.t()
        }

  defstruct [:business_name, :filter_type]

  field :business_name, 1, type: :string, json_name: "businessName"

  field :filter_type, 2,
    type:
      Google.Ads.Googleads.V8.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType,
    enum: true,
    json_name: "filterType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Common.DynamicAffiliateLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          chain_ids: [integer]
        }

  defstruct [:chain_ids]

  field :chain_ids, 1, repeated: true, type: :int64, json_name: "chainIds"

  def transform_module(), do: nil
end
