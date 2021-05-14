defmodule Google.Cloud.Automl.V1.InputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          params: %{String.t() => String.t()}
        }

  defstruct [:source, :params]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, oneof: 0

  field :params, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.InputConfig.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1.BatchPredictInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource, oneof: 0
end

defmodule Google.Cloud.Automl.V1.DocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: Google.Cloud.Automl.V1.GcsSource.t() | nil
        }

  defstruct [:gcs_source]

  field :gcs_source, 1, type: Google.Cloud.Automl.V1.GcsSource
end

defmodule Google.Cloud.Automl.V1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Automl.V1.GcsDestination, oneof: 0
end

defmodule Google.Cloud.Automl.V1.BatchPredictOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Automl.V1.GcsDestination, oneof: 0
end

defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.ModelExportOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          model_format: String.t(),
          params: %{String.t() => String.t()}
        }

  defstruct [:destination, :model_format, :params]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Automl.V1.GcsDestination, oneof: 0
  field :model_format, 4, type: :string

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

  defstruct [:input_uris]

  field :input_uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Automl.V1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string
end
