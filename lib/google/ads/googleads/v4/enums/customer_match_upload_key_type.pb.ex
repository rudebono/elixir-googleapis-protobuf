defmodule Google.Ads.Googleads.V4.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CONTACT_INFO | :CRM_ID | :MOBILE_ADVERTISING_ID

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CONTACT_INFO, 2

  field :CRM_ID, 3

  field :MOBILE_ADVERTISING_ID, 4
end

defmodule Google.Ads.Googleads.V4.Enums.CustomerMatchUploadKeyTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
