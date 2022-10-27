defmodule Google.Ads.Googleads.V12.Common.DateRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_date, 3, proto3_optional: true, type: :string, json_name: "startDate"
  field :end_date, 4, proto3_optional: true, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Googleads.V12.Common.YearMonthRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start, 1, type: Google.Ads.Googleads.V12.Common.YearMonth
  field :end, 2, type: Google.Ads.Googleads.V12.Common.YearMonth
end

defmodule Google.Ads.Googleads.V12.Common.YearMonth do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :year, 1, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V12.Enums.MonthOfYearEnum.MonthOfYear, enum: true
end