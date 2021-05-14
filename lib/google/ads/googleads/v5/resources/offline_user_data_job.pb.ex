defmodule Google.Ads.Googleads.V5.Resources.OfflineUserDataJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          external_id: Google.Protobuf.Int64Value.t() | nil,
          type:
            Google.Ads.Googleads.V5.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType.t(),
          status:
            Google.Ads.Googleads.V5.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus.t(),
          failure_reason:
            Google.Ads.Googleads.V5.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason.t()
        }

  defstruct [:metadata, :resource_name, :id, :external_id, :type, :status, :failure_reason]

  oneof :metadata, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :external_id, 3, type: Google.Protobuf.Int64Value

  field :type, 4,
    type: Google.Ads.Googleads.V5.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType,
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V5.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus,
    enum: true

  field :failure_reason, 6,
    type:
      Google.Ads.Googleads.V5.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason,
    enum: true

  field :customer_match_user_list_metadata, 7,
    type: Google.Ads.Googleads.V5.Common.CustomerMatchUserListMetadata,
    oneof: 0

  field :store_sales_metadata, 8,
    type: Google.Ads.Googleads.V5.Common.StoreSalesMetadata,
    oneof: 0
end
