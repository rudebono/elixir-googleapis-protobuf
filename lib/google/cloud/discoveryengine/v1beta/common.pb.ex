defmodule Google.Cloud.Discoveryengine.V1beta.IndustryVertical do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INDUSTRY_VERTICAL_UNSPECIFIED, 0
  field :GENERIC, 1
  field :MEDIA, 2
  field :HEALTHCARE_FHIR, 7
end

defmodule Google.Cloud.Discoveryengine.V1beta.SolutionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SOLUTION_TYPE_UNSPECIFIED, 0
  field :SOLUTION_TYPE_RECOMMENDATION, 1
  field :SOLUTION_TYPE_SEARCH, 2
  field :SOLUTION_TYPE_CHAT, 3
  field :SOLUTION_TYPE_GENERATIVE_CHAT, 4
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchUseCase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_USE_CASE_UNSPECIFIED, 0
  field :SEARCH_USE_CASE_SEARCH, 1
  field :SEARCH_USE_CASE_BROWSE, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_TIER_UNSPECIFIED, 0
  field :SEARCH_TIER_STANDARD, 1
  field :SEARCH_TIER_ENTERPRISE, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.SearchAddOn do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_ADD_ON_UNSPECIFIED, 0
  field :SEARCH_ADD_ON_LLM, 1
end

defmodule Google.Cloud.Discoveryengine.V1beta.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :min, 0

  oneof :max, 1

  field :minimum, 1, type: :double, oneof: 0
  field :exclusive_minimum, 2, type: :double, json_name: "exclusiveMinimum", oneof: 0
  field :maximum, 3, type: :double, oneof: 1
  field :exclusive_maximum, 4, type: :double, json_name: "exclusiveMaximum", oneof: 1
end

defmodule Google.Cloud.Discoveryengine.V1beta.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1beta.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :user_agent, 2, type: :string, json_name: "userAgent"
end

defmodule Google.Cloud.Discoveryengine.V1beta.EmbeddingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_path, 1, type: :string, json_name: "fieldPath"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DoubleList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double
end