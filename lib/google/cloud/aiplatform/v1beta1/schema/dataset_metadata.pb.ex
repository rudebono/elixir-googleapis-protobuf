defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_item_schema_uri: String.t(),
          gcs_bucket: String.t()
        }

  defstruct data_item_schema_uri: "",
            gcs_bucket: ""

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_item_schema_uri: String.t(),
          gcs_bucket: String.t()
        }

  defstruct data_item_schema_uri: "",
            gcs_bucket: ""

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_item_schema_uri: String.t(),
          gcs_bucket: String.t()
        }

  defstruct data_item_schema_uri: "",
            gcs_bucket: ""

  field :data_item_schema_uri, 1, type: :string, json_name: "dataItemSchemaUri"
  field :gcs_bucket, 2, type: :string, json_name: "gcsBucket"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source,
             Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.GcsSource.t() | nil}
            | {:bigquery_source,
               Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.BigQuerySource.t()
               | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: [String.t()]
        }

  defstruct uri: []

  field :uri, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config:
            Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.InputConfig.t() | nil
        }

  defstruct input_config: nil

  field :input_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TablesDatasetMetadata.InputConfig,
    json_name: "inputConfig"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source,
             Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.GcsSource.t() | nil}
            | {:bigquery_source,
               Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.BigQuerySource.t()
               | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: [String.t()]
        }

  defstruct uri: []

  field :uri, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config:
            Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.InputConfig.t() | nil,
          time_series_identifier_column: String.t(),
          time_column: String.t()
        }

  defstruct input_config: nil,
            time_series_identifier_column: "",
            time_column: ""

  field :input_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSeriesDatasetMetadata.InputConfig,
    json_name: "inputConfig"

  field :time_series_identifier_column, 2, type: :string, json_name: "timeSeriesIdentifierColumn"
  field :time_column, 3, type: :string, json_name: "timeColumn"
end
