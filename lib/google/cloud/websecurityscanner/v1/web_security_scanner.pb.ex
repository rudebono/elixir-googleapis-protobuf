defmodule Google.Cloud.Websecurityscanner.V1.CreateScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig,
    json_name: "scanConfig"
end
defmodule Google.Cloud.Websecurityscanner.V1.DeleteScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.ListScanConfigsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig,
    json_name: "scanConfig"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Websecurityscanner.V1.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scan_configs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig,
    json_name: "scanConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1.StartScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.GetScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.ListScanRunsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1.ListScanRunsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scan_runs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.ScanRun,
    json_name: "scanRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1.StopScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :crawled_urls, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.CrawledUrl,
    json_name: "crawledUrls"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1.GetFindingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.ListFindingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Websecurityscanner.V1.ListFindingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1.Finding
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :finding_type_stats, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.FindingTypeStats,
    json_name: "findingTypeStats"
end
defmodule Google.Cloud.Websecurityscanner.V1.WebSecurityScanner.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.websecurityscanner.v1.WebSecurityScanner",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateScanConfig,
      Google.Cloud.Websecurityscanner.V1.CreateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1.ScanConfig

  rpc :DeleteScanConfig,
      Google.Cloud.Websecurityscanner.V1.DeleteScanConfigRequest,
      Google.Protobuf.Empty

  rpc :GetScanConfig,
      Google.Cloud.Websecurityscanner.V1.GetScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1.ScanConfig

  rpc :ListScanConfigs,
      Google.Cloud.Websecurityscanner.V1.ListScanConfigsRequest,
      Google.Cloud.Websecurityscanner.V1.ListScanConfigsResponse

  rpc :UpdateScanConfig,
      Google.Cloud.Websecurityscanner.V1.UpdateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1.ScanConfig

  rpc :StartScanRun,
      Google.Cloud.Websecurityscanner.V1.StartScanRunRequest,
      Google.Cloud.Websecurityscanner.V1.ScanRun

  rpc :GetScanRun,
      Google.Cloud.Websecurityscanner.V1.GetScanRunRequest,
      Google.Cloud.Websecurityscanner.V1.ScanRun

  rpc :ListScanRuns,
      Google.Cloud.Websecurityscanner.V1.ListScanRunsRequest,
      Google.Cloud.Websecurityscanner.V1.ListScanRunsResponse

  rpc :StopScanRun,
      Google.Cloud.Websecurityscanner.V1.StopScanRunRequest,
      Google.Cloud.Websecurityscanner.V1.ScanRun

  rpc :ListCrawledUrls,
      Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsRequest,
      Google.Cloud.Websecurityscanner.V1.ListCrawledUrlsResponse

  rpc :GetFinding,
      Google.Cloud.Websecurityscanner.V1.GetFindingRequest,
      Google.Cloud.Websecurityscanner.V1.Finding

  rpc :ListFindings,
      Google.Cloud.Websecurityscanner.V1.ListFindingsRequest,
      Google.Cloud.Websecurityscanner.V1.ListFindingsResponse

  rpc :ListFindingTypeStats,
      Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsRequest,
      Google.Cloud.Websecurityscanner.V1.ListFindingTypeStatsResponse
end

defmodule Google.Cloud.Websecurityscanner.V1.WebSecurityScanner.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Websecurityscanner.V1.WebSecurityScanner.Service
end
