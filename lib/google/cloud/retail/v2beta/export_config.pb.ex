defmodule Google.Cloud.Retail.V2beta.ExportErrorsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_prefix, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Retail.V2beta.ExportMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:create_time, :update_time]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :update_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Retail.V2beta.ExportProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2beta.ExportErrorsConfig.t() | nil
        }

  defstruct [:error_samples, :errors_config]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Retail.V2beta.ExportErrorsConfig
end

defmodule Google.Cloud.Retail.V2beta.ExportUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2beta.ExportErrorsConfig.t() | nil
        }

  defstruct [:error_samples, :errors_config]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Retail.V2beta.ExportErrorsConfig
end
