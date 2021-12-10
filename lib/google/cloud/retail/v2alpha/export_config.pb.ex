defmodule Google.Cloud.Retail.V2alpha.ExportErrorsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_prefix, String.t()}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end
defmodule Google.Cloud.Retail.V2alpha.ExportMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct create_time: nil,
            update_time: nil

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Retail.V2alpha.ExportProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2alpha.ExportErrorsConfig.t() | nil
        }

  defstruct error_samples: [],
            errors_config: nil

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2alpha.ExportErrorsConfig,
    json_name: "errorsConfig"
end
defmodule Google.Cloud.Retail.V2alpha.ExportUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2alpha.ExportErrorsConfig.t() | nil
        }

  defstruct error_samples: [],
            errors_config: nil

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2alpha.ExportErrorsConfig,
    json_name: "errorsConfig"
end
