defmodule Google.Cloud.Healthcare.Logging.ImportAnnotationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.ExportAnnotationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :destination, 1, type: :string
  field :annotation_name, 2, type: :string, json_name: "annotationName"
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.EvaluateAnnotationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :destination, 1, type: :string
  field :eval_annotation_name, 2, type: :string, json_name: "evalAnnotationName"
  field :golden_annotation_name, 3, type: :string, json_name: "goldenAnnotationName"
  field :error, 4, type: Google.Rpc.Status
end