defmodule Google.Ads.Googleads.V4.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FIRST_PARTY
          | :THIRD_PARTY_CREDIT_BUREAU
          | :THIRD_PARTY_VOTER_FILE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FIRST_PARTY, 2

  field :THIRD_PARTY_CREDIT_BUREAU, 3

  field :THIRD_PARTY_VOTER_FILE, 4
end

defmodule Google.Ads.Googleads.V4.Enums.UserListCrmDataSourceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
