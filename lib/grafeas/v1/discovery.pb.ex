defmodule Grafeas.V1.DiscoveryOccurrence.ContinuousAnalysis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONTINUOUS_ANALYSIS_UNSPECIFIED | :ACTIVE | :INACTIVE

  field :CONTINUOUS_ANALYSIS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Grafeas.V1.DiscoveryOccurrence.AnalysisStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ANALYSIS_STATUS_UNSPECIFIED
          | :PENDING
          | :SCANNING
          | :FINISHED_SUCCESS
          | :FINISHED_FAILED
          | :FINISHED_UNSUPPORTED

  field :ANALYSIS_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :SCANNING, 2
  field :FINISHED_SUCCESS, 3
  field :FINISHED_FAILED, 4
  field :FINISHED_UNSUPPORTED, 5
end

defmodule Grafeas.V1.DiscoveryNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_kind: Grafeas.V1.NoteKind.t()
        }

  defstruct [:analysis_kind]

  field :analysis_kind, 1, type: Grafeas.V1.NoteKind, enum: true, json_name: "analysisKind"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.DiscoveryOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          continuous_analysis: Grafeas.V1.DiscoveryOccurrence.ContinuousAnalysis.t(),
          analysis_status: Grafeas.V1.DiscoveryOccurrence.AnalysisStatus.t(),
          analysis_status_error: Google.Rpc.Status.t() | nil,
          cpe: String.t(),
          last_scan_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :continuous_analysis,
    :analysis_status,
    :analysis_status_error,
    :cpe,
    :last_scan_time
  ]

  field :continuous_analysis, 1,
    type: Grafeas.V1.DiscoveryOccurrence.ContinuousAnalysis,
    enum: true,
    json_name: "continuousAnalysis"

  field :analysis_status, 2,
    type: Grafeas.V1.DiscoveryOccurrence.AnalysisStatus,
    enum: true,
    json_name: "analysisStatus"

  field :analysis_status_error, 3, type: Google.Rpc.Status, json_name: "analysisStatusError"
  field :cpe, 4, type: :string
  field :last_scan_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastScanTime"

  def transform_module(), do: nil
end
