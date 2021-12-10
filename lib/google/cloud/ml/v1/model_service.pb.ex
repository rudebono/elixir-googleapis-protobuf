defmodule Google.Cloud.Ml.V1.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          default_version: Google.Cloud.Ml.V1.Version.t() | nil,
          regions: [String.t()],
          online_prediction_logging: boolean
        }

  defstruct name: "",
            description: "",
            default_version: nil,
            regions: [],
            online_prediction_logging: false

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :default_version, 3, type: Google.Cloud.Ml.V1.Version, json_name: "defaultVersion"
  field :regions, 4, repeated: true, type: :string
  field :online_prediction_logging, 5, type: :bool, json_name: "onlinePredictionLogging"
end
defmodule Google.Cloud.Ml.V1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          is_default: boolean,
          deployment_uri: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          last_use_time: Google.Protobuf.Timestamp.t() | nil,
          runtime_version: String.t(),
          manual_scaling: Google.Cloud.Ml.V1.ManualScaling.t() | nil
        }

  defstruct name: "",
            description: "",
            is_default: false,
            deployment_uri: "",
            create_time: nil,
            last_use_time: nil,
            runtime_version: "",
            manual_scaling: nil

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :is_default, 3, type: :bool, json_name: "isDefault"
  field :deployment_uri, 4, type: :string, json_name: "deploymentUri"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :last_use_time, 6, type: Google.Protobuf.Timestamp, json_name: "lastUseTime"
  field :runtime_version, 8, type: :string, json_name: "runtimeVersion"
  field :manual_scaling, 9, type: Google.Cloud.Ml.V1.ManualScaling, json_name: "manualScaling"
end
defmodule Google.Cloud.Ml.V1.ManualScaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: integer
        }

  defstruct nodes: 0

  field :nodes, 1, type: :int32
end
defmodule Google.Cloud.Ml.V1.CreateModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model: Google.Cloud.Ml.V1.Model.t() | nil
        }

  defstruct parent: "",
            model: nil

  field :parent, 1, type: :string
  field :model, 2, type: Google.Cloud.Ml.V1.Model
end
defmodule Google.Cloud.Ml.V1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Ml.V1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Cloud.Ml.V1.Model.t()],
          next_page_token: String.t()
        }

  defstruct models: [],
            next_page_token: ""

  field :models, 1, repeated: true, type: Google.Cloud.Ml.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Ml.V1.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Ml.V1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Ml.V1.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Cloud.Ml.V1.Version.t() | nil
        }

  defstruct parent: "",
            version: nil

  field :parent, 1, type: :string
  field :version, 2, type: Google.Cloud.Ml.V1.Version
end
defmodule Google.Cloud.Ml.V1.ListVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Ml.V1.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Ml.V1.Version.t()],
          next_page_token: String.t()
        }

  defstruct versions: [],
            next_page_token: ""

  field :versions, 1, repeated: true, type: Google.Cloud.Ml.V1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Ml.V1.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Ml.V1.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Ml.V1.SetDefaultVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Ml.V1.ModelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ml.v1.ModelService"

  rpc :CreateModel, Google.Cloud.Ml.V1.CreateModelRequest, Google.Cloud.Ml.V1.Model

  rpc :ListModels, Google.Cloud.Ml.V1.ListModelsRequest, Google.Cloud.Ml.V1.ListModelsResponse

  rpc :GetModel, Google.Cloud.Ml.V1.GetModelRequest, Google.Cloud.Ml.V1.Model

  rpc :DeleteModel, Google.Cloud.Ml.V1.DeleteModelRequest, Google.Longrunning.Operation

  rpc :CreateVersion, Google.Cloud.Ml.V1.CreateVersionRequest, Google.Longrunning.Operation

  rpc :ListVersions,
      Google.Cloud.Ml.V1.ListVersionsRequest,
      Google.Cloud.Ml.V1.ListVersionsResponse

  rpc :GetVersion, Google.Cloud.Ml.V1.GetVersionRequest, Google.Cloud.Ml.V1.Version

  rpc :DeleteVersion, Google.Cloud.Ml.V1.DeleteVersionRequest, Google.Longrunning.Operation

  rpc :SetDefaultVersion, Google.Cloud.Ml.V1.SetDefaultVersionRequest, Google.Cloud.Ml.V1.Version
end

defmodule Google.Cloud.Ml.V1.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ml.V1.ModelService.Service
end
