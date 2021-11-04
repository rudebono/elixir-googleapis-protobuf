defmodule Google.Cloud.Aiplatform.V1.AvroSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Aiplatform.V1.GcsSource.t() | nil
        }

  defstruct [:gcs_source]

  field :gcs_source, 1, type: Google.Cloud.Aiplatform.V1.GcsSource, json_name: "gcsSource"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CsvSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Aiplatform.V1.GcsSource.t() | nil
        }

  defstruct [:gcs_source]

  field :gcs_source, 1, type: Google.Cloud.Aiplatform.V1.GcsSource, json_name: "gcsSource"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()]
        }

  defstruct [:uris]

  field :uris, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct [:input_uri]

  field :input_uri, 1, type: :string, json_name: "inputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string, json_name: "outputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CsvDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil
        }

  defstruct [:gcs_destination]

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.TFRecordDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil
        }

  defstruct [:gcs_destination]

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ContainerRegistryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string, json_name: "outputUri"

  def transform_module(), do: nil
end
