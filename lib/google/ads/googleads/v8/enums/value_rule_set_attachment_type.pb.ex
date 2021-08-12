defmodule Google.Ads.Googleads.V8.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CUSTOMER | :CAMPAIGN

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CUSTOMER, 2

  field :CAMPAIGN, 3
end

defmodule Google.Ads.Googleads.V8.Enums.ValueRuleSetAttachmentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
