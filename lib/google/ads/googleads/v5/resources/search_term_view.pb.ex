defmodule Google.Ads.Googleads.V5.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: Google.Protobuf.StringValue.t() | nil,
          ad_group: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V5.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus.t()
        }

  defstruct [:resource_name, :search_term, :ad_group, :status]

  field :resource_name, 1, type: :string
  field :search_term, 2, type: Google.Protobuf.StringValue
  field :ad_group, 3, type: Google.Protobuf.StringValue

  field :status, 4,
    type: Google.Ads.Googleads.V5.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
