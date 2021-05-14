defmodule Google.Ads.Googleads.V4.Enums.UserListTypeEnum.UserListType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :REMARKETING
          | :LOGICAL
          | :EXTERNAL_REMARKETING
          | :RULE_BASED
          | :SIMILAR
          | :CRM_BASED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :REMARKETING, 2

  field :LOGICAL, 3

  field :EXTERNAL_REMARKETING, 4

  field :RULE_BASED, 5

  field :SIMILAR, 6

  field :CRM_BASED, 7
end

defmodule Google.Ads.Googleads.V4.Enums.UserListTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
