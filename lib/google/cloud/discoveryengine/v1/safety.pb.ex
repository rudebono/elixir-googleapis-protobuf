defmodule Google.Cloud.Discoveryengine.V1.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_HATE_SPEECH, 1
  field :HARM_CATEGORY_DANGEROUS_CONTENT, 2
  field :HARM_CATEGORY_HARASSMENT, 3
  field :HARM_CATEGORY_SEXUALLY_EXPLICIT, 4
  field :HARM_CATEGORY_CIVIC_INTEGRITY, 5
end

defmodule Google.Cloud.Discoveryengine.V1.SafetyRating.HarmProbability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_PROBABILITY_UNSPECIFIED, 0
  field :NEGLIGIBLE, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
end

defmodule Google.Cloud.Discoveryengine.V1.SafetyRating.HarmSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_SEVERITY_UNSPECIFIED, 0
  field :HARM_SEVERITY_NEGLIGIBLE, 1
  field :HARM_SEVERITY_LOW, 2
  field :HARM_SEVERITY_MEDIUM, 3
  field :HARM_SEVERITY_HIGH, 4
end

defmodule Google.Cloud.Discoveryengine.V1.SafetyRating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 1,
    type: Google.Cloud.Discoveryengine.V1.HarmCategory,
    enum: true,
    deprecated: false

  field :probability, 2,
    type: Google.Cloud.Discoveryengine.V1.SafetyRating.HarmProbability,
    enum: true,
    deprecated: false

  field :probability_score, 5, type: :float, json_name: "probabilityScore", deprecated: false

  field :severity, 6,
    type: Google.Cloud.Discoveryengine.V1.SafetyRating.HarmSeverity,
    enum: true,
    deprecated: false

  field :severity_score, 7, type: :float, json_name: "severityScore", deprecated: false
  field :blocked, 3, type: :bool, deprecated: false
end
