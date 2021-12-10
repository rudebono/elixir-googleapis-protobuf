defmodule Google.Ads.Googleads.V8.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PROHIBITED
          | :LIMITED
          | :FULLY_LIMITED
          | :DESCRIPTIVE
          | :BROADENING
          | :AREA_OF_INTEREST_ONLY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROHIBITED, 2
  field :LIMITED, 4
  field :FULLY_LIMITED, 8
  field :DESCRIPTIVE, 5
  field :BROADENING, 6
  field :AREA_OF_INTEREST_ONLY, 7
end
defmodule Google.Ads.Googleads.V8.Enums.PolicyTopicEntryTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
