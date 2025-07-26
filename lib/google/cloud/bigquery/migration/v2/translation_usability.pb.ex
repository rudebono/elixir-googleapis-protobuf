defmodule Google.Cloud.Bigquery.Migration.V2.GcsReportLogMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :severity, 1, type: :string
  field :category, 2, type: :string
  field :file_path, 3, type: :string, json_name: "filePath"
  field :filename, 4, type: :string
  field :source_script_line, 5, type: :int32, json_name: "sourceScriptLine"
  field :source_script_column, 6, type: :int32, json_name: "sourceScriptColumn"
  field :message, 7, type: :string
  field :script_context, 8, type: :string, json_name: "scriptContext"
  field :action, 9, type: :string
  field :effect, 10, type: :string
  field :object_name, 11, type: :string, json_name: "objectName"
end
