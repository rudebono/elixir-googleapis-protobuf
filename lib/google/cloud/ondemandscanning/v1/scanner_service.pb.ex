defmodule Google.Cloud.Ondemandscanning.V1.AnalyzePackagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          resource_uri: String.t(),
          packages: [CloudContainers.Workflow.Analysis.Vulnerability.Proto.PackageData.t()]
        }

  defstruct [:parent, :resource_uri, :packages]

  field :parent, 1, type: :string
  field :resource_uri, 2, type: :string

  field :packages, 3,
    repeated: true,
    type: CloudContainers.Workflow.Analysis.Vulnerability.Proto.PackageData
end

defmodule Google.Cloud.Ondemandscanning.V1.AnalyzePackagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan: String.t()
        }

  defstruct [:scan]

  field :scan, 1, type: :string
end

defmodule Google.Cloud.Ondemandscanning.V1.AnalyzePackagesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_uri: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:resource_uri, :create_time]

  field :resource_uri, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Ondemandscanning.V1.ListVulnerabilitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Ondemandscanning.V1.ListVulnerabilitiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          occurrences: [Grafeas.V1.Occurrence.t()],
          next_page_token: String.t()
        }

  defstruct [:occurrences, :next_page_token]

  field :occurrences, 1, repeated: true, type: Grafeas.V1.Occurrence
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Ondemandscanning.V1.ScannerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ondemandscanning.v1.ScannerService"

  rpc :AnalyzePackages,
      Google.Cloud.Ondemandscanning.V1.AnalyzePackagesRequest,
      Google.Longrunning.Operation

  rpc :ListVulnerabilities,
      Google.Cloud.Ondemandscanning.V1.ListVulnerabilitiesRequest,
      Google.Cloud.Ondemandscanning.V1.ListVulnerabilitiesResponse
end

defmodule Google.Cloud.Ondemandscanning.V1.ScannerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ondemandscanning.V1.ScannerService.Service
end
