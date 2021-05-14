defmodule Google.Ads.Googleads.V5.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V5.Enums.LabelStatusEnum.LabelStatus.t(),
          text_label: Google.Ads.Googleads.V5.Common.TextLabel.t() | nil
        }

  defstruct [:resource_name, :id, :name, :status, :text_label]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :status, 4, type: Google.Ads.Googleads.V5.Enums.LabelStatusEnum.LabelStatus, enum: true
  field :text_label, 5, type: Google.Ads.Googleads.V5.Common.TextLabel
end
