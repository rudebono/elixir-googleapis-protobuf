defmodule Google.Cloud.Automl.V1beta1.InputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source, Google.Cloud.Automl.V1beta1.GcsSource.t() | nil}
            | {:bigquery_source, Google.Cloud.Automl.V1beta1.BigQuerySource.t() | nil},
          params: %{String.t() => String.t()}
        }

  defstruct [:source, :params]

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 3,
    type: Google.Cloud.Automl.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.InputConfig.ParamsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source, Google.Cloud.Automl.V1beta1.GcsSource.t() | nil}
            | {:bigquery_source, Google.Cloud.Automl.V1beta1.BigQuerySource.t() | nil}
        }

  defstruct [:source]

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Automl.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Automl.V1beta1.GcsSource.t() | nil
        }

  defstruct [:gcs_source]

  field :gcs_source, 1, type: Google.Cloud.Automl.V1beta1.GcsSource, json_name: "gcsSource"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Automl.V1beta1.GcsDestination.t() | nil}
            | {:bigquery_destination, Google.Cloud.Automl.V1beta1.BigQueryDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Automl.V1beta1.GcsDestination.t() | nil}
            | {:bigquery_destination, Google.Cloud.Automl.V1beta1.BigQueryDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.ModelExportOutputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.ModelExportOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Automl.V1beta1.GcsDestination.t() | nil}
            | {:gcr_destination, Google.Cloud.Automl.V1beta1.GcrDestination.t() | nil},
          model_format: String.t(),
          params: %{String.t() => String.t()}
        }

  defstruct [:destination, :model_format, :params]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :gcr_destination, 3,
    type: Google.Cloud.Automl.V1beta1.GcrDestination,
    json_name: "gcrDestination",
    oneof: 0

  field :model_format, 4, type: :string, json_name: "modelFormat"

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ModelExportOutputConfig.ParamsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:bigquery_destination, Google.Cloud.Automl.V1beta1.BigQueryDestination.t() | nil}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :bigquery_destination, 2,
    type: Google.Cloud.Automl.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uris: [String.t()]
        }

  defstruct [:input_uris]

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct [:input_uri]

  field :input_uri, 1, type: :string, json_name: "inputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string, json_name: "outputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.GcrDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string, json_name: "outputUri"

  def transform_module(), do: nil
end
