defmodule Google.Cloud.Automl.V1.InputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Automl.V1.GcsSource.t() | nil},
          params: %{String.t() => String.t()}
        }

  defstruct source: nil,
            params: %{}

  oneof :source, 0

  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, json_name: "gcsSource", oneof: 0

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.InputConfig.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.BatchPredictInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Automl.V1.GcsSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Automl.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false
end
defmodule Google.Cloud.Automl.V1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Automl.V1.GcsSource.t() | nil
        }

  defstruct gcs_source: nil

  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, json_name: "gcsSource"
end
defmodule Google.Cloud.Automl.V1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Automl.V1.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end
defmodule Google.Cloud.Automl.V1.BatchPredictOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Automl.V1.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false
end
defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Automl.V1.GcsDestination.t() | nil},
          model_format: String.t(),
          params: %{String.t() => String.t()}
        }

  defstruct destination: nil,
            model_format: "",
            params: %{}

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Automl.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :model_format, 4, type: :string, json_name: "modelFormat"

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.ModelExportOutputConfig.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uris: [String.t()]
        }

  defstruct input_uris: []

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
end
defmodule Google.Cloud.Automl.V1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct output_uri_prefix: ""

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end
