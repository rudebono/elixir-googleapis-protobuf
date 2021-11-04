defmodule Google.Ads.Googleads.V9.Enums.ChangeClientTypeEnum.ChangeClientType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :GOOGLE_ADS_WEB_CLIENT
          | :GOOGLE_ADS_AUTOMATED_RULE
          | :GOOGLE_ADS_SCRIPTS
          | :GOOGLE_ADS_BULK_UPLOAD
          | :GOOGLE_ADS_API
          | :GOOGLE_ADS_EDITOR
          | :GOOGLE_ADS_MOBILE_APP
          | :GOOGLE_ADS_RECOMMENDATIONS
          | :SEARCH_ADS_360_SYNC
          | :SEARCH_ADS_360_POST
          | :INTERNAL_TOOL
          | :OTHER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :GOOGLE_ADS_WEB_CLIENT, 2
  field :GOOGLE_ADS_AUTOMATED_RULE, 3
  field :GOOGLE_ADS_SCRIPTS, 4
  field :GOOGLE_ADS_BULK_UPLOAD, 5
  field :GOOGLE_ADS_API, 6
  field :GOOGLE_ADS_EDITOR, 7
  field :GOOGLE_ADS_MOBILE_APP, 8
  field :GOOGLE_ADS_RECOMMENDATIONS, 9
  field :SEARCH_ADS_360_SYNC, 10
  field :SEARCH_ADS_360_POST, 11
  field :INTERNAL_TOOL, 12
  field :OTHER, 13
end

defmodule Google.Ads.Googleads.V9.Enums.ChangeClientTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
