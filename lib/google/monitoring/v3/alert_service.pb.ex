defmodule Google.Monitoring.V3.CreateAlertPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          alert_policy: Google.Monitoring.V3.AlertPolicy.t() | nil
        }

  defstruct [:name, :alert_policy]

  field :name, 3, type: :string
  field :alert_policy, 2, type: Google.Monitoring.V3.AlertPolicy
end

defmodule Google.Monitoring.V3.GetAlertPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string
end

defmodule Google.Monitoring.V3.ListAlertPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          order_by: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :order_by, :page_size, :page_token]

  field :name, 4, type: :string
  field :filter, 5, type: :string
  field :order_by, 6, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Monitoring.V3.ListAlertPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alert_policies: [Google.Monitoring.V3.AlertPolicy.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:alert_policies, :next_page_token, :total_size]

  field :alert_policies, 3, repeated: true, type: Google.Monitoring.V3.AlertPolicy
  field :next_page_token, 2, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Monitoring.V3.UpdateAlertPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          alert_policy: Google.Monitoring.V3.AlertPolicy.t() | nil
        }

  defstruct [:update_mask, :alert_policy]

  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :alert_policy, 3, type: Google.Monitoring.V3.AlertPolicy
end

defmodule Google.Monitoring.V3.DeleteAlertPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string
end
