defmodule Google.Api.Quota do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          limits: [Google.Api.QuotaLimit.t()],
          metric_rules: [Google.Api.MetricRule.t()]
        }

  defstruct limits: [],
            metric_rules: []

  field :limits, 3, repeated: true, type: Google.Api.QuotaLimit
  field :metric_rules, 4, repeated: true, type: Google.Api.MetricRule, json_name: "metricRules"
end
defmodule Google.Api.MetricRule.MetricCostsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Google.Api.MetricRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          metric_costs: %{String.t() => integer}
        }

  defstruct selector: "",
            metric_costs: %{}

  field :selector, 1, type: :string

  field :metric_costs, 2,
    repeated: true,
    type: Google.Api.MetricRule.MetricCostsEntry,
    json_name: "metricCosts",
    map: true
end
defmodule Google.Api.QuotaLimit.ValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Google.Api.QuotaLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          default_limit: integer,
          max_limit: integer,
          free_tier: integer,
          duration: String.t(),
          metric: String.t(),
          unit: String.t(),
          values: %{String.t() => integer},
          display_name: String.t()
        }

  defstruct name: "",
            description: "",
            default_limit: 0,
            max_limit: 0,
            free_tier: 0,
            duration: "",
            metric: "",
            unit: "",
            values: %{},
            display_name: ""

  field :name, 6, type: :string
  field :description, 2, type: :string
  field :default_limit, 3, type: :int64, json_name: "defaultLimit"
  field :max_limit, 4, type: :int64, json_name: "maxLimit"
  field :free_tier, 7, type: :int64, json_name: "freeTier"
  field :duration, 5, type: :string
  field :metric, 8, type: :string
  field :unit, 9, type: :string
  field :values, 10, repeated: true, type: Google.Api.QuotaLimit.ValuesEntry, map: true
  field :display_name, 12, type: :string, json_name: "displayName"
end
