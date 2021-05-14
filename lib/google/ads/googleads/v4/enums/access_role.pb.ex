defmodule Google.Ads.Googleads.V4.Enums.AccessRoleEnum.AccessRole do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADMIN | :STANDARD | :READ_ONLY | :EMAIL_ONLY

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADMIN, 2

  field :STANDARD, 3

  field :READ_ONLY, 4

  field :EMAIL_ONLY, 5
end

defmodule Google.Ads.Googleads.V4.Enums.AccessRoleEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
