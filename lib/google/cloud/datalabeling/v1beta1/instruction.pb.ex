defmodule Google.Cloud.Datalabeling.V1beta1.Instruction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          data_type: Google.Cloud.Datalabeling.V1beta1.DataType.t(),
          csv_instruction: Google.Cloud.Datalabeling.V1beta1.CsvInstruction.t() | nil,
          pdf_instruction: Google.Cloud.Datalabeling.V1beta1.PdfInstruction.t() | nil,
          blocking_resources: [String.t()]
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :create_time,
    :update_time,
    :data_type,
    :csv_instruction,
    :pdf_instruction,
    :blocking_resources
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :data_type, 6,
    type: Google.Cloud.Datalabeling.V1beta1.DataType,
    enum: true,
    json_name: "dataType"

  field :csv_instruction, 7,
    type: Google.Cloud.Datalabeling.V1beta1.CsvInstruction,
    deprecated: true,
    json_name: "csvInstruction"

  field :pdf_instruction, 9,
    type: Google.Cloud.Datalabeling.V1beta1.PdfInstruction,
    json_name: "pdfInstruction"

  field :blocking_resources, 10, repeated: true, type: :string, json_name: "blockingResources"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.CsvInstruction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_file_uri: String.t()
        }

  defstruct [:gcs_file_uri]

  field :gcs_file_uri, 1, type: :string, json_name: "gcsFileUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.PdfInstruction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_file_uri: String.t()
        }

  defstruct [:gcs_file_uri]

  field :gcs_file_uri, 1, type: :string, json_name: "gcsFileUri"

  def transform_module(), do: nil
end
