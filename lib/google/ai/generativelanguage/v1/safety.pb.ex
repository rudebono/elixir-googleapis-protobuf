defmodule Google.Ai.Generativelanguage.V1.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_DEROGATORY, 1
  field :HARM_CATEGORY_TOXICITY, 2
  field :HARM_CATEGORY_VIOLENCE, 3
  field :HARM_CATEGORY_SEXUAL, 4
  field :HARM_CATEGORY_MEDICAL, 5
  field :HARM_CATEGORY_DANGEROUS, 6
  field :HARM_CATEGORY_HARASSMENT, 7
  field :HARM_CATEGORY_HATE_SPEECH, 8
  field :HARM_CATEGORY_SEXUALLY_EXPLICIT, 9
  field :HARM_CATEGORY_DANGEROUS_CONTENT, 10
end

defmodule Google.Ai.Generativelanguage.V1.SafetyRating.HarmProbability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HARM_PROBABILITY_UNSPECIFIED, 0
  field :NEGLIGIBLE, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
end

defmodule Google.Ai.Generativelanguage.V1.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
  field :BLOCK_NONE, 4
end

defmodule Google.Ai.Generativelanguage.V1.SafetyRating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1.HarmCategory,
    enum: true,
    deprecated: false

  field :probability, 4,
    type: Google.Ai.Generativelanguage.V1.SafetyRating.HarmProbability,
    enum: true,
    deprecated: false

  field :blocked, 5, type: :bool
end

defmodule Google.Ai.Generativelanguage.V1.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1.HarmCategory,
    enum: true,
    deprecated: false

  field :threshold, 4,
    type: Google.Ai.Generativelanguage.V1.SafetySetting.HarmBlockThreshold,
    enum: true,
    deprecated: false
end