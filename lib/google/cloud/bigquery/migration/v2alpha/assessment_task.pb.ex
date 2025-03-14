defmodule Google.Cloud.Bigquery.Migration.V2alpha.AssessmentTaskDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_path, 1, type: :string, json_name: "inputPath", deprecated: false
  field :output_dataset, 2, type: :string, json_name: "outputDataset", deprecated: false
  field :querylogs_path, 3, type: :string, json_name: "querylogsPath", deprecated: false
  field :data_source, 4, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.AssessmentOrchestrationResultDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output_tables_schema_version, 1,
    type: :string,
    json_name: "outputTablesSchemaVersion",
    deprecated: false
end
