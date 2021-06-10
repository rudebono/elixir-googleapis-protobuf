defmodule Google.Ads.Googleads.V8.Enums.SummaryRowSettingEnum.SummaryRowSetting do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NO_SUMMARY_ROW
          | :SUMMARY_ROW_WITH_RESULTS
          | :SUMMARY_ROW_ONLY

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NO_SUMMARY_ROW, 2

  field :SUMMARY_ROW_WITH_RESULTS, 3

  field :SUMMARY_ROW_ONLY, 4
end

defmodule Google.Ads.Googleads.V8.Enums.SummaryRowSettingEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
