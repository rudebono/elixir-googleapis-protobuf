defmodule Google.Ads.Googleads.V4.Resources.CustomerManagerLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          manager_customer: Google.Protobuf.StringValue.t() | nil,
          manager_link_id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.ManagerLinkStatusEnum.ManagerLinkStatus.t()
        }

  defstruct [:resource_name, :manager_customer, :manager_link_id, :status]

  field :resource_name, 1, type: :string
  field :manager_customer, 3, type: Google.Protobuf.StringValue
  field :manager_link_id, 4, type: Google.Protobuf.Int64Value

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true
end
