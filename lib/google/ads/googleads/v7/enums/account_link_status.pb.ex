defmodule Google.Ads.Googleads.V7.Enums.AccountLinkStatusEnum.AccountLinkStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ENABLED
          | :REMOVED
          | :REQUESTED
          | :PENDING_APPROVAL
          | :REJECTED
          | :REVOKED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :REQUESTED, 4
  field :PENDING_APPROVAL, 5
  field :REJECTED, 6
  field :REVOKED, 7
end
defmodule Google.Ads.Googleads.V7.Enums.AccountLinkStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
