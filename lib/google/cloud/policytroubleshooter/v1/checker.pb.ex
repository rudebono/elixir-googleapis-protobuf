defmodule Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_tuple: Google.Cloud.Policytroubleshooter.V1.AccessTuple.t() | nil
        }

  defstruct [:access_tuple]

  field :access_tuple, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessTuple
end

defmodule Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access: Google.Cloud.Policytroubleshooter.V1.AccessState.t(),
          explained_policies: [Google.Cloud.Policytroubleshooter.V1.ExplainedPolicy.t()]
        }

  defstruct [:access, :explained_policies]

  field :access, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessState, enum: true

  field :explained_policies, 2,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.ExplainedPolicy
end
