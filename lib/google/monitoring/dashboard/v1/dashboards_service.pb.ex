defmodule Google.Monitoring.Dashboard.V1.CreateDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dashboard: Google.Monitoring.Dashboard.V1.Dashboard.t() | nil
        }

  defstruct [:parent, :dashboard]

  field :parent, 1, type: :string
  field :dashboard, 2, type: Google.Monitoring.Dashboard.V1.Dashboard
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dashboards: [Google.Monitoring.Dashboard.V1.Dashboard.t()],
          next_page_token: String.t()
        }

  defstruct [:dashboards, :next_page_token]

  field :dashboards, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.Dashboard
  field :next_page_token, 2, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.GetDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.DeleteDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.Dashboard.V1.UpdateDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dashboard: Google.Monitoring.Dashboard.V1.Dashboard.t() | nil
        }

  defstruct [:dashboard]

  field :dashboard, 1, type: Google.Monitoring.Dashboard.V1.Dashboard
end
