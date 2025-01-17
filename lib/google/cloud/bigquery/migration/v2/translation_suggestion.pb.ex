defmodule Google.Cloud.Bigquery.Migration.V2.TranslationReportRecord.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Bigquery.Migration.V2.TranslationReportRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :severity, 1,
    type: Google.Cloud.Bigquery.Migration.V2.TranslationReportRecord.Severity,
    enum: true

  field :script_line, 2, type: :int32, json_name: "scriptLine"
  field :script_column, 3, type: :int32, json_name: "scriptColumn"
  field :category, 4, type: :string
  field :message, 5, type: :string
end
