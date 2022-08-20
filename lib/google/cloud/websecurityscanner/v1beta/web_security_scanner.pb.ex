defmodule Google.Cloud.Websecurityscanner.V1beta.CreateScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig,
    json_name: "scanConfig",
    deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.DeleteScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.UpdateScanConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scan_config, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig,
    json_name: "scanConfig",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scan_configs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig,
    json_name: "scanConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.StartScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanRunsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListScanRunsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scan_runs, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun,
    json_name: "scanRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.StopScanRunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :crawled_urls, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.CrawledUrl,
    json_name: "crawledUrls"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.GetFindingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Cloud.Websecurityscanner.V1beta.Finding
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :finding_type_stats, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.FindingTypeStats,
    json_name: "findingTypeStats"
end

defmodule Google.Cloud.Websecurityscanner.V1beta.WebSecurityScanner.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.websecurityscanner.v1beta.WebSecurityScanner",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateScanConfig,
      Google.Cloud.Websecurityscanner.V1beta.CreateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanConfig

  rpc :DeleteScanConfig,
      Google.Cloud.Websecurityscanner.V1beta.DeleteScanConfigRequest,
      Google.Protobuf.Empty

  rpc :GetScanConfig,
      Google.Cloud.Websecurityscanner.V1beta.GetScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanConfig

  rpc :ListScanConfigs,
      Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsRequest,
      Google.Cloud.Websecurityscanner.V1beta.ListScanConfigsResponse

  rpc :UpdateScanConfig,
      Google.Cloud.Websecurityscanner.V1beta.UpdateScanConfigRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanConfig

  rpc :StartScanRun,
      Google.Cloud.Websecurityscanner.V1beta.StartScanRunRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanRun

  rpc :GetScanRun,
      Google.Cloud.Websecurityscanner.V1beta.GetScanRunRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanRun

  rpc :ListScanRuns,
      Google.Cloud.Websecurityscanner.V1beta.ListScanRunsRequest,
      Google.Cloud.Websecurityscanner.V1beta.ListScanRunsResponse

  rpc :StopScanRun,
      Google.Cloud.Websecurityscanner.V1beta.StopScanRunRequest,
      Google.Cloud.Websecurityscanner.V1beta.ScanRun

  rpc :ListCrawledUrls,
      Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsRequest,
      Google.Cloud.Websecurityscanner.V1beta.ListCrawledUrlsResponse

  rpc :GetFinding,
      Google.Cloud.Websecurityscanner.V1beta.GetFindingRequest,
      Google.Cloud.Websecurityscanner.V1beta.Finding

  rpc :ListFindings,
      Google.Cloud.Websecurityscanner.V1beta.ListFindingsRequest,
      Google.Cloud.Websecurityscanner.V1beta.ListFindingsResponse

  rpc :ListFindingTypeStats,
      Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsRequest,
      Google.Cloud.Websecurityscanner.V1beta.ListFindingTypeStatsResponse
end

defmodule Google.Cloud.Websecurityscanner.V1beta.WebSecurityScanner.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Websecurityscanner.V1beta.WebSecurityScanner.Service
end