defmodule Google.Cloud.Datalabeling.V1beta1.Instruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :data_type, 6,
    type: Google.Cloud.Datalabeling.V1beta1.DataType,
    json_name: "dataType",
    enum: true

  field :csv_instruction, 7,
    type: Google.Cloud.Datalabeling.V1beta1.CsvInstruction,
    json_name: "csvInstruction",
    deprecated: true

  field :pdf_instruction, 9,
    type: Google.Cloud.Datalabeling.V1beta1.PdfInstruction,
    json_name: "pdfInstruction"

  field :blocking_resources, 10, repeated: true, type: :string, json_name: "blockingResources"
end

defmodule Google.Cloud.Datalabeling.V1beta1.CsvInstruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_file_uri, 1, type: :string, json_name: "gcsFileUri"
end

defmodule Google.Cloud.Datalabeling.V1beta1.PdfInstruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_file_uri, 1, type: :string, json_name: "gcsFileUri"
end