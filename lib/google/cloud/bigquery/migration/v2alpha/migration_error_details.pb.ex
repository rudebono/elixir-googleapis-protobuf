defmodule Google.Cloud.Bigquery.Migration.V2alpha.ResourceErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_info: Google.Rpc.ResourceInfo.t() | nil,
          error_details: [Google.Cloud.Bigquery.Migration.V2alpha.ErrorDetail.t()],
          error_count: integer
        }

  defstruct [:resource_info, :error_details, :error_count]

  field :resource_info, 1, type: Google.Rpc.ResourceInfo, json_name: "resourceInfo"

  field :error_details, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.ErrorDetail,
    json_name: "errorDetails"

  field :error_count, 3, type: :int32, json_name: "errorCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Cloud.Bigquery.Migration.V2alpha.ErrorLocation.t() | nil,
          error_info: Google.Rpc.ErrorInfo.t() | nil
        }

  defstruct [:location, :error_info]

  field :location, 1, type: Google.Cloud.Bigquery.Migration.V2alpha.ErrorLocation
  field :error_info, 2, type: Google.Rpc.ErrorInfo, json_name: "errorInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ErrorLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          line: integer,
          column: integer
        }

  defstruct [:line, :column]

  field :line, 1, type: :int32
  field :column, 2, type: :int32

  def transform_module(), do: nil
end
