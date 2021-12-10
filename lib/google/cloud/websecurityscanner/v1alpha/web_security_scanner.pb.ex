defmodule Google.Cloud.Websecurityscanner.V1alpha.CreateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          scan_config: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.t() | nil
        }

  defstruct parent: "",
            scan_config: nil

  field :parent, 1, type: :string, deprecated: false

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig,
    json_name: "scanConfig",
    deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.DeleteScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListScanConfigsRequest do
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

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_config: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct scan_config: nil,
            update_mask: nil

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig,
    json_name: "scanConfig",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_configs: [Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.t()],
          next_page_token: String.t()
        }

  defstruct scan_configs: [],
            next_page_token: ""

  field :scan_configs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig,
    json_name: "scanConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.StartScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.GetScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListScanRunsRequest do
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

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListScanRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scan_runs: [Google.Cloud.Websecurityscanner.V1alpha.ScanRun.t()],
          next_page_token: String.t()
        }

  defstruct scan_runs: [],
            next_page_token: ""

  field :scan_runs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanRun,
    json_name: "scanRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.StopScanRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListCrawledUrlsRequest do
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

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListCrawledUrlsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crawled_urls: [Google.Cloud.Websecurityscanner.V1alpha.CrawledUrl.t()],
          next_page_token: String.t()
        }

  defstruct crawled_urls: [],
            next_page_token: ""

  field :crawled_urls, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.CrawledUrl,
    json_name: "crawledUrls"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.GetFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Cloud.Websecurityscanner.V1alpha.Finding.t()],
          next_page_token: String.t()
        }

  defstruct findings: [],
            next_page_token: ""

  field :findings, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1alpha.Finding
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListFindingTypeStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ListFindingTypeStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type_stats: [Google.Cloud.Websecurityscanner.V1alpha.FindingTypeStats.t()]
        }

  defstruct finding_type_stats: []

  field :finding_type_stats, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.FindingTypeStats,
    json_name: "findingTypeStats"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.WebSecurityScanner.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.websecurityscanner.v1alpha.WebSecurityScanner"

  rpc :CreateScanConfig,
      Google.Cloud.Websecurityscanner.V1alpha.CreateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanConfig

  rpc :DeleteScanConfig,
      Google.Cloud.Websecurityscanner.V1alpha.DeleteScanConfigRequest,
      Google.Protobuf.Empty

  rpc :GetScanConfig,
      Google.Cloud.Websecurityscanner.V1alpha.GetScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanConfig

  rpc :ListScanConfigs,
      Google.Cloud.Websecurityscanner.V1alpha.ListScanConfigsRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ListScanConfigsResponse

  rpc :UpdateScanConfig,
      Google.Cloud.Websecurityscanner.V1alpha.UpdateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanConfig

  rpc :StartScanRun,
      Google.Cloud.Websecurityscanner.V1alpha.StartScanRunRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanRun

  rpc :GetScanRun,
      Google.Cloud.Websecurityscanner.V1alpha.GetScanRunRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanRun

  rpc :ListScanRuns,
      Google.Cloud.Websecurityscanner.V1alpha.ListScanRunsRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ListScanRunsResponse

  rpc :StopScanRun,
      Google.Cloud.Websecurityscanner.V1alpha.StopScanRunRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ScanRun

  rpc :ListCrawledUrls,
      Google.Cloud.Websecurityscanner.V1alpha.ListCrawledUrlsRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ListCrawledUrlsResponse

  rpc :GetFinding,
      Google.Cloud.Websecurityscanner.V1alpha.GetFindingRequest,
      Google.Cloud.Websecurityscanner.V1alpha.Finding

  rpc :ListFindings,
      Google.Cloud.Websecurityscanner.V1alpha.ListFindingsRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ListFindingsResponse

  rpc :ListFindingTypeStats,
      Google.Cloud.Websecurityscanner.V1alpha.ListFindingTypeStatsRequest,
      Google.Cloud.Websecurityscanner.V1alpha.ListFindingTypeStatsResponse
end

defmodule Google.Cloud.Websecurityscanner.V1alpha.WebSecurityScanner.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Websecurityscanner.V1alpha.WebSecurityScanner.Service
end
