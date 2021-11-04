defmodule Grafeas.V1beta1.Discovery.Discovered.ContinuousAnalysis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONTINUOUS_ANALYSIS_UNSPECIFIED | :ACTIVE | :INACTIVE

  field :CONTINUOUS_ANALYSIS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Grafeas.V1beta1.Discovery.Discovered.AnalysisStatus do
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

defmodule Grafeas.V1beta1.Discovery.Discovery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_kind: Grafeas.V1beta1.NoteKind.t()
        }

  defstruct [:analysis_kind]

  field :analysis_kind, 1, type: Grafeas.V1beta1.NoteKind, enum: true, json_name: "analysisKind"

  def transform_module(), do: nil
end

defmodule Grafeas.V1beta1.Discovery.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discovered: Grafeas.V1beta1.Discovery.Discovered.t() | nil
        }

  defstruct [:discovered]

  field :discovered, 1, type: Grafeas.V1beta1.Discovery.Discovered

  def transform_module(), do: nil
end

defmodule Grafeas.V1beta1.Discovery.Discovered do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          continuous_analysis: Grafeas.V1beta1.Discovery.Discovered.ContinuousAnalysis.t(),
          last_analysis_time: Google.Protobuf.Timestamp.t() | nil,
          analysis_status: Grafeas.V1beta1.Discovery.Discovered.AnalysisStatus.t(),
          analysis_status_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:continuous_analysis, :last_analysis_time, :analysis_status, :analysis_status_error]

  field :continuous_analysis, 1,
    type: Grafeas.V1beta1.Discovery.Discovered.ContinuousAnalysis,
    enum: true,
    json_name: "continuousAnalysis"

  field :last_analysis_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastAnalysisTime"

  field :analysis_status, 3,
    type: Grafeas.V1beta1.Discovery.Discovered.AnalysisStatus,
    enum: true,
    json_name: "analysisStatus"

  field :analysis_status_error, 4, type: Google.Rpc.Status, json_name: "analysisStatusError"

  def transform_module(), do: nil
end
