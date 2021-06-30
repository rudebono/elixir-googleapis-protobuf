defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          include_past_releases: boolean
        }

  defstruct [:parent, :page_size, :page_token, :include_past_releases]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :include_past_releases, 4, type: :bool
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_versions: [Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersion.t()],
          next_page_token: String.t()
        }

  defstruct [:image_versions, :next_page_token]

  field :image_versions, 1,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersion

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_version_id: String.t(),
          is_default: boolean,
          supported_python_versions: [String.t()],
          release_date: Google.Type.Date.t() | nil,
          creation_disabled: boolean,
          upgrade_disabled: boolean
        }

  defstruct [
    :image_version_id,
    :is_default,
    :supported_python_versions,
    :release_date,
    :creation_disabled,
    :upgrade_disabled
  ]

  field :image_version_id, 1, type: :string
  field :is_default, 2, type: :bool
  field :supported_python_versions, 3, repeated: true, type: :string
  field :release_date, 4, type: Google.Type.Date
  field :creation_disabled, 5, type: :bool
  field :upgrade_disabled, 6, type: :bool
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.orchestration.airflow.service.v1.ImageVersions"

  rpc :ListImageVersions,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListImageVersionsResponse
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Orchestration.Airflow.Service.V1.ImageVersions.Service
end
