defmodule Google.Cloud.Secretmanager.Logging.V1.SecretEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVENT_TYPE_UNSPECIFIED
          | :EXPIRES_IN_30_DAYS
          | :EXPIRES_IN_7_DAYS
          | :EXPIRES_IN_1_DAY
          | :EXPIRES_IN_6_HOURS
          | :EXPIRES_IN_1_HOUR
          | :EXPIRED
          | :TOPIC_NOT_FOUND
          | :TOPIC_PERMISSION_DENIED

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EXPIRES_IN_30_DAYS, 1
  field :EXPIRES_IN_7_DAYS, 2
  field :EXPIRES_IN_1_DAY, 3
  field :EXPIRES_IN_6_HOURS, 4
  field :EXPIRES_IN_1_HOUR, 5
  field :EXPIRED, 6
  field :TOPIC_NOT_FOUND, 7
  field :TOPIC_PERMISSION_DENIED, 8
end
defmodule Google.Cloud.Secretmanager.Logging.V1.SecretEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Secretmanager.Logging.V1.SecretEvent.EventType.t(),
          log_message: String.t()
        }

  defstruct name: "",
            type: :EVENT_TYPE_UNSPECIFIED,
            log_message: ""

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Secretmanager.Logging.V1.SecretEvent.EventType, enum: true
  field :log_message, 3, type: :string, json_name: "logMessage"
end
