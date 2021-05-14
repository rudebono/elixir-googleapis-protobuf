defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODEL_TYPE_UNSPECIFIED | :MODEL_TYPE_STANDARD | :MODEL_TYPE_ADVANCED

  field :MODEL_TYPE_UNSPECIFIED, 0

  field :MODEL_TYPE_STANDARD, 1

  field :MODEL_TYPE_ADVANCED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelTrainingMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TRAINING_MODE_UNSPECIFIED
          | :MODEL_TRAINING_MODE_AUTOMATIC
          | :MODEL_TRAINING_MODE_MANUAL

  field :MODEL_TRAINING_MODE_UNSPECIFIED, 0

  field :MODEL_TRAINING_MODE_AUTOMATIC, 1

  field :MODEL_TRAINING_MODE_MANUAL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest.ImportOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :IMPORT_OPTION_UNSPECIFIED | :KEEP | :FALLBACK

  field :IMPORT_OPTION_UNSPECIFIED, 0

  field :KEEP, 1

  field :FALLBACK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.NluSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelType.t(),
          classification_threshold: float | :infinity | :negative_infinity | :nan,
          model_training_mode: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelTrainingMode.t()
        }

  defstruct [:model_type, :classification_threshold, :model_training_mode]

  field :model_type, 1, type: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelType, enum: true
  field :classification_threshold, 3, type: :float

  field :model_training_mode, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.NluSettings.ModelTrainingMode,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Flow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          transition_routes: [Google.Cloud.Dialogflow.Cx.V3.TransitionRoute.t()],
          event_handlers: [Google.Cloud.Dialogflow.Cx.V3.EventHandler.t()],
          transition_route_groups: [String.t()],
          nlu_settings: Google.Cloud.Dialogflow.Cx.V3.NluSettings.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :transition_routes,
    :event_handlers,
    :transition_route_groups,
    :nlu_settings
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :transition_routes, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.TransitionRoute
  field :event_handlers, 10, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.EventHandler
  field :transition_route_groups, 15, repeated: true, type: :string
  field :nlu_settings, 11, type: Google.Cloud.Dialogflow.Cx.V3.NluSettings
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          flow: Google.Cloud.Dialogflow.Cx.V3.Flow.t() | nil,
          language_code: String.t()
        }

  defstruct [:parent, :flow, :language_code]

  field :parent, 1, type: :string
  field :flow, 2, type: Google.Cloud.Dialogflow.Cx.V3.Flow
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListFlowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :language_code]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListFlowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          flows: [Google.Cloud.Dialogflow.Cx.V3.Flow.t()],
          next_page_token: String.t()
        }

  defstruct [:flows, :next_page_token]

  field :flows, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Flow
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          flow: Google.Cloud.Dialogflow.Cx.V3.Flow.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          language_code: String.t()
        }

  defstruct [:flow, :update_mask, :language_code]

  field :flow, 1, type: Google.Cloud.Dialogflow.Cx.V3.Flow
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.TrainFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ValidateFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetFlowValidationResultRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.FlowValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validation_messages: [Google.Cloud.Dialogflow.Cx.V3.ValidationMessage.t()],
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :validation_messages, :update_time]

  field :name, 1, type: :string

  field :validation_messages, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.ValidationMessage

  field :update_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          flow: {atom, any},
          parent: String.t(),
          import_option: Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest.ImportOption.t()
        }

  defstruct [:flow, :parent, :import_option]

  oneof :flow, 0
  field :parent, 1, type: :string
  field :flow_uri, 2, type: :string, oneof: 0
  field :flow_content, 3, type: :bytes, oneof: 0

  field :import_option, 4,
    type: Google.Cloud.Dialogflow.Cx.V3.ImportFlowRequest.ImportOption,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ImportFlowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          flow: String.t()
        }

  defstruct [:flow]

  field :flow, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportFlowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          flow_uri: String.t(),
          include_referenced_flows: boolean
        }

  defstruct [:name, :flow_uri, :include_referenced_flows]

  field :name, 1, type: :string
  field :flow_uri, 2, type: :string
  field :include_referenced_flows, 4, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ExportFlowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          flow: {atom, any}
        }

  defstruct [:flow]

  oneof :flow, 0
  field :flow_uri, 1, type: :string, oneof: 0
  field :flow_content, 2, type: :bytes, oneof: 0
end
