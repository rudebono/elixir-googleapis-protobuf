defmodule Google.Cloud.Aiplatform.V1.LineageSubgraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1.Artifact.t()],
          executions: [Google.Cloud.Aiplatform.V1.Execution.t()],
          events: [Google.Cloud.Aiplatform.V1.Event.t()]
        }

  defstruct artifacts: [],
            executions: [],
            events: []

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact
  field :executions, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Execution
  field :events, 3, repeated: true, type: Google.Cloud.Aiplatform.V1.Event
end
