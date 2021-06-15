defmodule Google.Cloud.Eventarc.V1.GetTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Eventarc.V1.ListTriggersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :order_by, 4, type: :string
end

defmodule Google.Cloud.Eventarc.V1.ListTriggersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          triggers: [Google.Cloud.Eventarc.V1.Trigger.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:triggers, :next_page_token, :unreachable]

  field :triggers, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Trigger
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Eventarc.V1.CreateTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          trigger: Google.Cloud.Eventarc.V1.Trigger.t() | nil,
          trigger_id: String.t(),
          validate_only: boolean
        }

  defstruct [:parent, :trigger, :trigger_id, :validate_only]

  field :parent, 1, type: :string
  field :trigger, 2, type: Google.Cloud.Eventarc.V1.Trigger
  field :trigger_id, 3, type: :string
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Eventarc.V1.UpdateTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: Google.Cloud.Eventarc.V1.Trigger.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct [:trigger, :update_mask, :allow_missing, :validate_only]

  field :trigger, 1, type: Google.Cloud.Eventarc.V1.Trigger
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Eventarc.V1.DeleteTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct [:name, :etag, :allow_missing, :validate_only]

  field :name, 1, type: :string
  field :etag, 2, type: :string
  field :allow_missing, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Eventarc.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string
  field :requested_cancellation, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Eventarc.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.eventarc.v1.Eventarc"

  rpc :GetTrigger, Google.Cloud.Eventarc.V1.GetTriggerRequest, Google.Cloud.Eventarc.V1.Trigger

  rpc :ListTriggers,
      Google.Cloud.Eventarc.V1.ListTriggersRequest,
      Google.Cloud.Eventarc.V1.ListTriggersResponse

  rpc :CreateTrigger, Google.Cloud.Eventarc.V1.CreateTriggerRequest, Google.Longrunning.Operation

  rpc :UpdateTrigger, Google.Cloud.Eventarc.V1.UpdateTriggerRequest, Google.Longrunning.Operation

  rpc :DeleteTrigger, Google.Cloud.Eventarc.V1.DeleteTriggerRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Eventarc.V1.Eventarc.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Eventarc.V1.Eventarc.Service
end
