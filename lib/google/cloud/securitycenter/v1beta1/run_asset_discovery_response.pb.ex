defmodule Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryResponse.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :COMPLETED | :SUPERSEDED | :TERMINATED

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :SUPERSEDED, 2
  field :TERMINATED, 3
end
defmodule Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryResponse.State.t(),
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            duration: nil

  field :state, 1,
    type: Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryResponse.State,
    enum: true

  field :duration, 2, type: Google.Protobuf.Duration
end
