defmodule Google.Ads.Googleads.V16.Common.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_date, 3, proto3_optional: true, type: :string, json_name: "startDate"
  field :end_date, 4, proto3_optional: true, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Googleads.V16.Common.YearMonthRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start, 1, type: Google.Ads.Googleads.V16.Common.YearMonth
  field :end, 2, type: Google.Ads.Googleads.V16.Common.YearMonth
end

defmodule Google.Ads.Googleads.V16.Common.YearMonth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :year, 1, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V16.Enums.MonthOfYearEnum.MonthOfYear, enum: true
end