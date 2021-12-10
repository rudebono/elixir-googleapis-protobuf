defmodule Google.Ads.Googleads.V8.Enums.AccessInvitationStatusEnum.AccessInvitationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :DECLINED | :EXPIRED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :DECLINED, 3
  field :EXPIRED, 4
end
defmodule Google.Ads.Googleads.V8.Enums.AccessInvitationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
