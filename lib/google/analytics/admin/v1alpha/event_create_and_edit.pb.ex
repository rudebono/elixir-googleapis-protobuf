defmodule Google.Analytics.Admin.V1alpha.MatchingCondition.ComparisonType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPARISON_TYPE_UNSPECIFIED, 0
  field :EQUALS, 1
  field :EQUALS_CASE_INSENSITIVE, 2
  field :CONTAINS, 3
  field :CONTAINS_CASE_INSENSITIVE, 4
  field :STARTS_WITH, 5
  field :STARTS_WITH_CASE_INSENSITIVE, 6
  field :ENDS_WITH, 7
  field :ENDS_WITH_CASE_INSENSITIVE, 8
  field :GREATER_THAN, 9
  field :GREATER_THAN_OR_EQUAL, 10
  field :LESS_THAN, 11
  field :LESS_THAN_OR_EQUAL, 12
  field :REGULAR_EXPRESSION, 13
  field :REGULAR_EXPRESSION_CASE_INSENSITIVE, 14
end

defmodule Google.Analytics.Admin.V1alpha.ParameterMutation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parameter, 1, type: :string, deprecated: false
  field :parameter_value, 2, type: :string, json_name: "parameterValue", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.EventCreateRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_event, 2, type: :string, json_name: "destinationEvent", deprecated: false

  field :event_conditions, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.MatchingCondition,
    json_name: "eventConditions",
    deprecated: false

  field :source_copy_parameters, 4, type: :bool, json_name: "sourceCopyParameters"

  field :parameter_mutations, 5,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ParameterMutation,
    json_name: "parameterMutations"
end

defmodule Google.Analytics.Admin.V1alpha.MatchingCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: :string, deprecated: false

  field :comparison_type, 2,
    type: Google.Analytics.Admin.V1alpha.MatchingCondition.ComparisonType,
    json_name: "comparisonType",
    enum: true,
    deprecated: false

  field :value, 3, type: :string, deprecated: false
  field :negated, 4, type: :bool
end