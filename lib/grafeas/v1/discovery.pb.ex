defmodule Grafeas.V1.DiscoveryOccurrence.ContinuousAnalysis do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CONTINUOUS_ANALYSIS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Grafeas.V1.DiscoveryOccurrence.AnalysisStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ANALYSIS_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :SCANNING, 2
  field :FINISHED_SUCCESS, 3
  field :COMPLETE, 3
  field :FINISHED_FAILED, 4
  field :FINISHED_UNSUPPORTED, 5
end

defmodule Grafeas.V1.DiscoveryNote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_kind, 1, type: Grafeas.V1.NoteKind, json_name: "analysisKind", enum: true
end

defmodule Grafeas.V1.DiscoveryOccurrence.AnalysisCompleted do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analysis_type, 1, repeated: true, type: :string, json_name: "analysisType"
end

defmodule Grafeas.V1.DiscoveryOccurrence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :continuous_analysis, 1,
    type: Grafeas.V1.DiscoveryOccurrence.ContinuousAnalysis,
    json_name: "continuousAnalysis",
    enum: true

  field :analysis_status, 2,
    type: Grafeas.V1.DiscoveryOccurrence.AnalysisStatus,
    json_name: "analysisStatus",
    enum: true

  field :analysis_completed, 7,
    type: Grafeas.V1.DiscoveryOccurrence.AnalysisCompleted,
    json_name: "analysisCompleted"

  field :analysis_error, 8, repeated: true, type: Google.Rpc.Status, json_name: "analysisError"
  field :analysis_status_error, 3, type: Google.Rpc.Status, json_name: "analysisStatusError"
  field :cpe, 4, type: :string
  field :last_scan_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastScanTime"

  field :archive_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "archiveTime",
    deprecated: false
end