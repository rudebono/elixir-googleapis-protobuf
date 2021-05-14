defmodule Google.Devtools.Containeranalysis.V1beta1.ScanConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          enabled: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :description, :enabled, :create_time, :update_time]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :enabled, 3, type: :bool
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Devtools.Containeranalysis.V1beta1.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ListScanConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_configs: [Google.Devtools.Containeranalysis.V1beta1.ScanConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:scan_configs, :next_page_token]

  field :scan_configs, 1,
    repeated: true,
    type: Google.Devtools.Containeranalysis.V1beta1.ScanConfig

  field :next_page_token, 2, type: :string
end

defmodule Google.Devtools.Containeranalysis.V1beta1.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          scan_config: Google.Devtools.Containeranalysis.V1beta1.ScanConfig.t() | nil
        }

  defstruct [:name, :scan_config]

  field :name, 1, type: :string
  field :scan_config, 2, type: Google.Devtools.Containeranalysis.V1beta1.ScanConfig
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.containeranalysis.v1beta1.ContainerAnalysisV1Beta1"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetScanConfig,
      Google.Devtools.Containeranalysis.V1beta1.GetScanConfigRequest,
      Google.Devtools.Containeranalysis.V1beta1.ScanConfig

  rpc :ListScanConfigs,
      Google.Devtools.Containeranalysis.V1beta1.ListScanConfigsRequest,
      Google.Devtools.Containeranalysis.V1beta1.ListScanConfigsResponse

  rpc :UpdateScanConfig,
      Google.Devtools.Containeranalysis.V1beta1.UpdateScanConfigRequest,
      Google.Devtools.Containeranalysis.V1beta1.ScanConfig
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service
end
