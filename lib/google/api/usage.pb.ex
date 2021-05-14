defmodule Google.Api.Usage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requirements: [String.t()],
          rules: [Google.Api.UsageRule.t()],
          producer_notification_channel: String.t()
        }

  defstruct [:requirements, :rules, :producer_notification_channel]

  field :requirements, 1, repeated: true, type: :string
  field :rules, 6, repeated: true, type: Google.Api.UsageRule
  field :producer_notification_channel, 7, type: :string
end

defmodule Google.Api.UsageRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          allow_unregistered_calls: boolean,
          skip_service_control: boolean
        }

  defstruct [:selector, :allow_unregistered_calls, :skip_service_control]

  field :selector, 1, type: :string
  field :allow_unregistered_calls, 2, type: :bool
  field :skip_service_control, 3, type: :bool
end
