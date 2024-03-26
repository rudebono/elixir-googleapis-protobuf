defmodule Google.Ads.Admanager.V1.ExportSavedReportRequest.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :CSV_DUMP, 2
  field :XLSX, 5
  field :XML, 6
end

defmodule Google.Ads.Admanager.V1.Report do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ExportSavedReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :report, 1, type: :string, deprecated: false

  field :format, 2,
    type: Google.Ads.Admanager.V1.ExportSavedReportRequest.Format,
    enum: true,
    deprecated: false

  field :include_report_properties, 3, type: :bool, json_name: "includeReportProperties"
  field :include_ids, 4, type: :bool, json_name: "includeIds"
  field :include_totals_row, 5, type: :bool, json_name: "includeTotalsRow"
  field :file_name, 6, type: :string, json_name: "fileName"
end

defmodule Google.Ads.Admanager.V1.ExportSavedReportMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result_id, 1, type: :int64, json_name: "resultId"
end

defmodule Google.Ads.Admanager.V1.ExportSavedReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :download_url, 1, type: :string, json_name: "downloadUrl"
end

defmodule Google.Ads.Admanager.V1.ReportService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.ReportService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ExportSavedReport,
      Google.Ads.Admanager.V1.ExportSavedReportRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Admanager.V1.ReportService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.ReportService.Service
end