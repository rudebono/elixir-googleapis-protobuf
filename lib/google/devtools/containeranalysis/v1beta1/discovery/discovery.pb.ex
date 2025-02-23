defmodule Grafeas.V1beta1.Discovery.Discovered.ContinuousAnalysis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTINUOUS_ANALYSIS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Grafeas.V1beta1.Discovery.Discovered.AnalysisStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ANALYSIS_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :SCANNING, 2
  field :FINISHED_SUCCESS, 3
  field :FINISHED_FAILED, 4
  field :FINISHED_UNSUPPORTED, 5
end

defmodule Grafeas.V1beta1.Discovery.Discovery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :analysis_kind, 1, type: Grafeas.V1beta1.NoteKind, json_name: "analysisKind", enum: true
end

defmodule Grafeas.V1beta1.Discovery.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :discovered, 1, type: Grafeas.V1beta1.Discovery.Discovered
end

defmodule Grafeas.V1beta1.Discovery.Discovered do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :continuous_analysis, 1,
    type: Grafeas.V1beta1.Discovery.Discovered.ContinuousAnalysis,
    json_name: "continuousAnalysis",
    enum: true

  field :last_analysis_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastAnalysisTime"

  field :analysis_status, 3,
    type: Grafeas.V1beta1.Discovery.Discovered.AnalysisStatus,
    json_name: "analysisStatus",
    enum: true

  field :analysis_status_error, 4, type: Google.Rpc.Status, json_name: "analysisStatusError"
end
