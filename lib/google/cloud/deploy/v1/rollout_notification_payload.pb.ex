defmodule Google.Cloud.Deploy.V1.RolloutNotificationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          pipeline_uid: String.t(),
          release_uid: String.t(),
          rollout: String.t(),
          type: Google.Cloud.Deploy.V1.Type.t(),
          target_id: String.t()
        }

  defstruct message: "",
            pipeline_uid: "",
            release_uid: "",
            rollout: "",
            type: :TYPE_UNSPECIFIED,
            target_id: ""

  field :message, 1, type: :string
  field :pipeline_uid, 2, type: :string, json_name: "pipelineUid"
  field :release_uid, 3, type: :string, json_name: "releaseUid"
  field :rollout, 4, type: :string
  field :type, 5, type: Google.Cloud.Deploy.V1.Type, enum: true
  field :target_id, 6, type: :string, json_name: "targetId"
end
