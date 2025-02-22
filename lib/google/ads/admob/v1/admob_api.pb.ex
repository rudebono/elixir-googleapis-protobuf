defmodule Google.Ads.Admob.V1.GetPublisherAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Ads.Admob.V1.ListPublisherAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Ads.Admob.V1.ListPublisherAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, repeated: true, type: Google.Ads.Admob.V1.PublisherAccount
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Admob.V1.GenerateMediationReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :report_spec, 2, type: Google.Ads.Admob.V1.MediationReportSpec, json_name: "reportSpec"
end

defmodule Google.Ads.Admob.V1.GenerateMediationReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :payload, 0

  field :header, 1, type: Google.Ads.Admob.V1.ReportHeader, oneof: 0
  field :row, 2, type: Google.Ads.Admob.V1.ReportRow, oneof: 0
  field :footer, 3, type: Google.Ads.Admob.V1.ReportFooter, oneof: 0
end

defmodule Google.Ads.Admob.V1.GenerateNetworkReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :report_spec, 2, type: Google.Ads.Admob.V1.NetworkReportSpec, json_name: "reportSpec"
end

defmodule Google.Ads.Admob.V1.GenerateNetworkReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :payload, 0

  field :header, 1, type: Google.Ads.Admob.V1.ReportHeader, oneof: 0
  field :row, 2, type: Google.Ads.Admob.V1.ReportRow, oneof: 0
  field :footer, 3, type: Google.Ads.Admob.V1.ReportFooter, oneof: 0
end

defmodule Google.Ads.Admob.V1.AdMobApi.Service do
  @moduledoc false

  use GRPC.Service, name: "google.ads.admob.v1.AdMobApi", protoc_gen_elixir_version: "0.14.1"

  rpc :GetPublisherAccount,
      Google.Ads.Admob.V1.GetPublisherAccountRequest,
      Google.Ads.Admob.V1.PublisherAccount

  rpc :ListPublisherAccounts,
      Google.Ads.Admob.V1.ListPublisherAccountsRequest,
      Google.Ads.Admob.V1.ListPublisherAccountsResponse

  rpc :GenerateNetworkReport,
      Google.Ads.Admob.V1.GenerateNetworkReportRequest,
      stream(Google.Ads.Admob.V1.GenerateNetworkReportResponse)

  rpc :GenerateMediationReport,
      Google.Ads.Admob.V1.GenerateMediationReportRequest,
      stream(Google.Ads.Admob.V1.GenerateMediationReportResponse)
end

defmodule Google.Ads.Admob.V1.AdMobApi.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admob.V1.AdMobApi.Service
end
